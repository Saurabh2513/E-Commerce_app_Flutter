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
      home: BottomNavbar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
