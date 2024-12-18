import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:submission1/helper/util.dart';
import 'package:submission1/providers/user_models_provider.dart';
import 'package:submission1/ui/home_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main()  async {
  try {
    await dotenv.load(fileName: ".env");
  } catch (e) {
    print('Error loading .env file: $e');
  }
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserModelsProviders(),
      child: MyApp(),
    ),
  );
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