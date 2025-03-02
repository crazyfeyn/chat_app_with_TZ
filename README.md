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
git clone https://github.com/crazyfeyn/chat_app_with_TZ/
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