import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter_application_1/features/home/data/model/chat_message_model.dart';
import 'package:flutter_application_1/features/home/domain/usecase/start_new_chat_usecase.dart';
import 'package:flutter_application_1/core/constants/app_constants.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_application_1/features/home/domain/usecase/send_image_message_usecase.dart';

class ChatScreen extends StatefulWidget {
  final String receiverId;
  final String receiverName;
  final String senderId;
  final String receiverEmail;
  final String senderEmail;

  const ChatScreen({
    super.key,
    required this.receiverId,
    required this.receiverName,
    required this.senderId,
    required this.receiverEmail,
    required this.senderEmail,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  void _sendMessage() {
    if (_messageController.text.trim().isEmpty) return;

    final params = StartNewChatParam(
      receiverId: widget.receiverId,
      senderId: widget.senderId,
      message: _messageController.text.trim(),
      receiverEmail: widget.receiverEmail,
      senderEmail: widget.senderEmail,
    );

    context.read<HomeBloc>().add(HomeEvent.startNewChat(params));
    _messageController.clear();
  }

  Future<void> _sendImageMessage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      final imageFile = File(image.path);

      final params = SendImageMessageParam(
        receiverId: widget.receiverId,
        senderId: widget.senderId,
        imageFile: imageFile,
      );

      // ignore: use_build_context_synchronously
      context.read<HomeBloc>().add(HomeEvent.sendImageMessage(params));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1F2A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C1F2A),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          widget.receiverName,
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.status == Status.success) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _scrollToBottom();
            });
          }
        },
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.white),
            );
          } else if (state.status == Status.error) {
            return Center(
              child: Text(
                state.errorMessage ?? 'An error occurred',
                style: const TextStyle(color: Colors.white),
              ),
            );
          } else {
            return Column(
              children: [
                Expanded(
                  child: state.messages.isEmpty
                      ? const Center(
                          child: Text(
                            'No messages yet. Start a conversation!',
                            style: TextStyle(color: Colors.white70),
                          ),
                        )
                      : ListView.builder(
                          controller: _scrollController,
                          padding: const EdgeInsets.all(16),
                          itemCount: state.messages.length,
                          itemBuilder: (context, index) {
                            final message = state.messages[index];
                            final isMe = message.senderId == widget.senderId;
                            return _buildMessageBubble(message, isMe);
                          },
                        ),
                ),
                _buildMessageInput(),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildMessageBubble(ChatMessageModel message, bool isMe) {
    // Format the timestamp
    final dateTime = DateTime.fromMillisecondsSinceEpoch(message.timestamp);
    final formattedTime = '${dateTime.hour}:${dateTime.minute}';

    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color: isMe ? Colors.blue : Colors.grey[700],
              borderRadius: BorderRadius.circular(15),
            ),
            child: message.isImage
                ? Image.network(
                    message.message,
                    width: 200,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const SizedBox(
                        width: 200,
                        height: 150,
                        child: Center(
                          child: CircularProgressIndicator(color: Colors.white),
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return const SizedBox(
                        width: 200,
                        height: 50,
                        child: Center(
                          child: Text(
                            'Error loading image',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    },
                  )
                : Text(
                    message.message,
                    style: const TextStyle(color: Colors.white),
                  ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              formattedTime,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageInput() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      color: const Color(0xFF262A37),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.photo, color: Colors.white70),
            onPressed: _sendImageMessage,
          ),
          Expanded(
            child: TextField(
              controller: _messageController,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: 'Type a message...',
                hintStyle: TextStyle(color: Colors.white54),
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send, color: Colors.white70),
            onPressed: _sendMessage,
          ),
        ],
      ),
    );
  }
}
