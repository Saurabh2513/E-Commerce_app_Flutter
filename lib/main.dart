import 'package:e_commerce_app/features/auth/signin_screen.dart';
import 'package:e_commerce_app/features/auth/signup_screen.dart';
import 'package:e_commerce_app/features/tabs/home/splash_screen.dart';
import 'package:e_commerce_app/features/tabs/profile/bottom_navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Demo",
      home:SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
