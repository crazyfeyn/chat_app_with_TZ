import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  borderRadius: BorderRadius.circular(50)),
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
              borderRadius: BorderRadius.circular(50)),
          child: const Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        leadingWidth: 60,
        centerTitle: true,
        title: const Text(
          'User Email',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(3.0),
              child: ListTile(
                leading: Container(
                  alignment: Alignment.center,
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Text(
                    'U',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ),
                title: const Text(
                  'User Name',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
