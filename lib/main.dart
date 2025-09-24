import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/Screens/HomeScreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Color(0xFF4044C9),
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Homescreen(),
    );
  }
}
