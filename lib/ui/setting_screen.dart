import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        leading: Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Container(
            width: 64.0,
            height: 64.0,
            child: Image.asset(
              'images/ChatAi-removebg.png',
              fit: BoxFit.cover,
            ),
          ),

        ),
        title: const Text('Settings'),
      ),
      body: Column(

      ),
    );
  }
}
