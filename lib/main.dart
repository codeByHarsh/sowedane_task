import 'package:flutter/material.dart';
import 'package:task_sn/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Libre'),
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}
