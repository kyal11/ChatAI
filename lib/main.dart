import 'package:flutter/material.dart';
import 'package:submission1/helper/util.dart';
import 'package:submission1/ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatAi',
      // debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: scaffoldBgColor,
        fontFamily: 'Roboto',
      ),
      home: HomeScreen()
    );
  }
}

