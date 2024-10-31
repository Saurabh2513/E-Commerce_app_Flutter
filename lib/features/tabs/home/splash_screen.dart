import 'dart:async';
import 'package:e_commerce_app/features/tabs/profile/bottom_navbar.dart';
import 'package:e_commerce_app/utils/constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BottomNavbar(),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: Image.asset('assets/images/categories/cate_1.png'),
    );
  }
}