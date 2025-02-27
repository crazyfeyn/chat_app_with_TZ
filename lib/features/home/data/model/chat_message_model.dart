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

  // Convert a ChatMessageModel to a Map for database insertion
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'receiver_id': receiverId,
      'sender_id': senderId,
      'timestamp': timestamp,
      'message': message,
      'chat_id': chatId,
    };
  }

  // Create a ChatMessageModel from a Map (e.g., from database query)
  factory ChatMessageModel.fromMap(Map<String, dynamic> map) {
    return ChatMessageModel(
      id: map['id'],
      receiverId: map['receiver_id'],
      senderId: map['sender_id'],
      timestamp: map['timestamp'],
      message: map['message'],
      chatId: map['chat_id'],
      isImage: map['message'].toString().endsWith('.jpg') ||
          map['message']
              .toString()
              .endsWith('.png'), // Check if the message is an image
    );
  }
}
