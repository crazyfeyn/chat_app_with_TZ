import 'package:flutter/foundation.dart';

class ChatMessageModel {
  final int? id;
  final String receiverId;
  final String senderId;
  final int timestamp;
  final String message;
  final String chatId;
  final bool isImage;

  ChatMessageModel({
    this.id,
    required this.receiverId,
    required this.senderId,
    required this.timestamp,
    required this.message,
    required this.chatId,
    this.isImage = false,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'receiver_id': receiverId,
      'sender_id': senderId,
      'timestamp': timestamp,
      'message': message,
      'chat_id': chatId,
      'isImage': isImage,
    };
  }

  factory ChatMessageModel.fromJson(Map<String, dynamic> map) {
    debugPrint('ChatMessageModel.fromJson: Converting map: $map');

    try {
      final receiverId = map['receiver_id']?.toString() ?? '';
      final senderId = map['sender_id']?.toString() ?? '';
      final timestamp = map['timestamp'] is int ? map['timestamp'] : 0;
      final message = map['message']?.toString() ?? '';
      final chatId = map['chat_id']?.toString() ?? '';

      final isImage = message.endsWith('.jpg') || message.endsWith('.png');

      debugPrint('ChatMessageModel.fromJson: Successfully converted data');

      return ChatMessageModel(
        id: map['id'],
        receiverId: receiverId,
        senderId: senderId,
        timestamp: timestamp,
        message: message,
        chatId: chatId,
        isImage: isImage,
      );
    } catch (e) {
      debugPrint('ChatMessageModel.fromJson: Error converting map: $e');
      rethrow;
    }
  }

  @override
  String toString() {
    return 'ChatMessageModel(id: $id, receiverId: $receiverId, senderId: $senderId, message: $message, chatId: $chatId)';
  }
}
