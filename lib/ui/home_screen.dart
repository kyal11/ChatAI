import 'package:submission1/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

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
            ), // Jarak antara gambar dan tombol
        Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 32.0),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Navigasi ke screen lain
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
                  color: Colors.black
                ),
              ),
            ),
          ),
        )],
        ),
      )
    );
  }
}