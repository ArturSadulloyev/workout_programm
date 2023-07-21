import 'package:workout_programm/pages/login_page.dart';
import 'package:workout_programm/pages/splash_page.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
