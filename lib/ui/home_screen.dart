import 'package:submission1/main.dart';
import 'package:flutter/material.dart';
import 'chat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'images/ChatAi-removebg.png',
            width: 400,
            height: 400,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 32.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChatScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white60,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0, // Tinggi tombol
                  ),
                ),
                child: const Text(
                  'Start Chat',
                  style: TextStyle(
                      fontFamily: 'Roboto-Regular.ttf',
                      fontSize: 24.0,
                      color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
