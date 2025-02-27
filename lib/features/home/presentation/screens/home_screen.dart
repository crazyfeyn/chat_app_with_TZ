import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/screens/chat_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter_application_1/features/auth/data/model/user_model.dart';
import 'package:flutter_application_1/core/constants/app_constants.dart';
import 'package:flutter_application_1/features/home/domain/usecase/get_chat_messages_usecase.dart';

class HomeScreen extends StatefulWidget {
  final String currentUserEmail;
  final String currentUserId;

  const HomeScreen({
    Key? key,
    required this.currentUserEmail,
    required this.currentUserId,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Load all users when screen initializes
    context.read<HomeBloc>().add(const HomeEvent.getAllUser());
  }

  void _navigateToChatScreen(BuildContext context, UserModel user) {
    print('1');
    print(user.email);
    print(widget.currentUserEmail);
    print('-------');
    final params = UsercaseParam(
      receiverEmail: user.email,
      senderEmail: widget.currentUserEmail,
    );

    context.read<HomeBloc>().add(HomeEvent.getChatMessages(params));

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatScreen(
          receiverId: user.id.toString(),
          receiverName: user.email,
          senderId: widget.currentUserId,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1F2A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C1F2A),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 10)
        ],
        leading: Container(
          alignment: Alignment.center,
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        leadingWidth: 60,
        centerTitle: true,
        title: Text(
          widget.currentUserEmail,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          } else if (state.status == Status.error) {
            return Center(
              child: Text(
                state.errorMessage ?? 'An error occurred',
                style: const TextStyle(color: Colors.white),
              ),
            );
          } else if (state.users.isEmpty) {
            return const Center(
              child: Text(
                'No users found',
                style: TextStyle(color: Colors.white),
              ),
            );
          } else {
            // Filter out current user from the list
            final filteredUsers = state.users
                .where((user) => user.email != widget.currentUserEmail)
                .toList();

            return Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ListView.builder(
                itemCount: filteredUsers.length,
                itemBuilder: (context, index) {
                  final user = filteredUsers[index];
                  return Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ListTile(
                      onTap: () => _navigateToChatScreen(context, user),
                      leading: Container(
                        alignment: Alignment.center,
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          user.email.isNotEmpty
                              ? user.email[0].toUpperCase()
                              : 'U',
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      title: Text(
                        user.email,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        user.email,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
