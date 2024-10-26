import 'package:e_commerce_app/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteCOlor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(
                  color: blackColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 16),
              CupertinoTextField(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                placeholder: 'Email Address',
                placeholderStyle:
                    TextStyle(color: TextFiledTextColor.withOpacity(0.5)),
                decoration: BoxDecoration(
                  color: textFiledColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              const SizedBox(height: 16),
              CupertinoTextField(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                placeholder: 'Password',
                placeholderStyle:
                    TextStyle(color: TextFiledTextColor.withOpacity(0.5)),
                decoration: BoxDecoration(
                  color: textFiledColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              const SizedBox(height: 25),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: CupertinoButton(
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: whiteCOlor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 24),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: TextFiledTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    const TextSpan(text: "Don't have an Accout?"),
                    TextSpan(
                      text: 'Create one',
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Column(
                children: [
                  SocialLogInButton(
                    icon: FontAwesomeIcons.apple,
                    color: blackColor,
                    text: 'Continue with Apple',
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SocialLogInButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final VoidCallback onPressed;

  const SocialLogInButton(
      {super.key,
      required this.icon,
      required this.color,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: textFiledColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: CupertinoButton(
        child: Text(
          text,
        ),
        onPressed: () {},
      ),
    );
  }
}
