import 'package:e_commerce_app/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteCOlor,
      appBar: AppBar(
        title: const Text(
          'Product Screen',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: TextFiledTextColor,
          ),
        ),
      ),
    );
  }
}
