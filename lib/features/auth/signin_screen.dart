import 'package:e_commerce_app/features/auth/signup_screen.dart';
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
          padding: const EdgeInsets.all(20.0),
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
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    const TextSpan(text: "Don't have an Accout?"),
                    TextSpan(
                      text: 'Create one',
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: primaryColor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => const SignupScreen(),
                              ));
                        },
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
                  const SizedBox(height: 16),
                  SocialLogInButton(
                    icon: FontAwesomeIcons.google,
                    color: const Color(0xFFDB4437),
                    text: 'Continue with Google',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 16),
                  SocialLogInButton(
                    icon: FontAwesomeIcons.facebook,
                    color: const Color(0xFF4267B2),
                    text: 'Continue with FaceBook',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 16),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: color,
              size: 24,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  color: blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
