Flutter Chat Application
A Flutter-based chat application built using Clean Architecture, BLoC for state management, and SQLite for local database storage. The app supports user authentication (login and registration), real-time chatting with all users in the database, and the ability to send both text and image messages. Messages are sorted by their timestamp, and the time of each message is displayed.

Features
User Authentication:

Login and register new users.

Store user credentials securely in the local SQLite database.

Chatting:

Chat with all users registered in the database.

Send text and image messages.

Messages are sorted by the last sent time.

Timestamps are displayed for each message.

Clean Architecture:

Follows Clean Architecture principles for separation of concerns.

Divided into layers: Presentation, Domain, and Data.

State Management:

Uses BLoC (Business Logic Component) for managing application state.

Local Database:

SQLite (sqflite) is used for storing users, messages, and chat data.

Image Support:

Users can send images in chats.

Project Structure
The project is organized using Clean Architecture principles:

Copy
lib/
├── core/                  # Core functionalities, constants, and utilities
├── features/              # Feature-specific code
│   ├── auth/              # Authentication (login, register)
│   │   ├── data/          # Data layer (repositories, models, data sources)
│   │   ├── domain/        # Domain layer (entities, use cases)
│   │   └── presentation/  # Presentation layer (UI, BLoC)
│   ├── home/              # Home and chat functionality
│   │   ├── data/          # Data layer (repositories, models, data sources)
│   │   ├── domain/        # Domain layer (entities, use cases)
│   │   └── presentation/  # Presentation layer (UI, BLoC)
├── main.dart              # Application entry point
Technologies Used
Flutter: UI framework for building cross-platform applications.

BLoC: State management for handling application logic and UI updates.

SQLite (sqflite): Local database for storing users and messages.

Clean Architecture: Separation of concerns into layers (Presentation, Domain, Data).

Image Picker: For selecting and sending images in chats.

Setup Instructions
Prerequisites
Flutter SDK installed (version 3.0 or higher).

Dart SDK installed (version 2.17 or higher).

Android Studio or VS Code with Flutter extensions.

Steps to Run the Project
Clone the Repository:

bash
Copy
git clone https://github.com/your-username/flutter-chat-app.git
cd flutter-chat-app
Install Dependencies:

bash
Copy
flutter pub get
Run the App:

bash
Copy
flutter run
Test the App:

Register a new user or log in with existing credentials.

Start chatting with other users.

Send text and image messages.

Observe the messages sorted by timestamp with visible timestamps.

Screenshots
Login Screen	Chat Screen	Image Message
Login	Chat	Image
Key Code Snippets
BLoC for Chatting
dart
Copy
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final StartNewChatUsecase startNewChatUsecase;

  HomeBloc({required this.startNewChatUsecase}) : super(HomeState()) {
    on<_startNewChat>(_startNewChatFunc);
  }

  Future<void> _startNewChatFunc(_startNewChat event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: Status.loading));
    final result = await startNewChatUsecase(event.startNewChatParam);
    result.fold(
      (failure) => emit(state.copyWith(status: Status.error, errorMessage: 'Failed to start new chat')),
      (success) => emit(state.copyWith(status: Status.success)),
    );
  }
}
SQLite Database Helper
dart
Copy
class DatabaseService {
  Future<void> startChat(String receiverId, String senderId, String chatId, String message) async {
    final db = await database;
    await db.insert('messages', {
      'receiver_id': int.parse(receiverId),
      'sender_id': int.parse(senderId),
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'message': message,
      'chat_id': chatId,
    });
  }
}
Message Model
dart
Copy
class ChatMessageModel {
  final String receiverId;
  final String senderId;
  final int timestamp;
  final String message;
  final String chatId;
  final bool isImage;

  ChatMessageModel({
    required this.receiverId,
    required this.senderId,
    required this.timestamp,
    required this.message,
    required this.chatId,
    this.isImage = false,
  });

  factory ChatMessageModel.fromJson(Map<String, dynamic> map) {
    return ChatMessageModel(
      receiverId: map['receiver_id'],
      senderId: map['sender_id'],
      timestamp: map['timestamp'],
      message: map['message'],
      chatId: map['chat_id'],
      isImage: map['message'].endsWith('.jpg') || map['message'].endsWith('.png'),
    );
  }
}
Future Enhancements
Implement real-time messaging using Firebase or WebSockets.

Add push notifications for new messages.

Support for video and file sharing.

Implement user profiles and status updates.

Contributing
Contributions are welcome! Please fork the repository and submit a pull request with your changes.

License
This project is licensed under the MIT License. See the LICENSE file for details.

Feel free to update the README.md with additional details or screenshots specific to your project. Let me know if you need further assistance! 🚀

