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
       actions: [
        Container(
          decoration: BoxDecoration(
            color: textFiledColor,
            borderRadius: BorderRadius.circular(50),

          ),
          padding: EdgeInsets.only(right: 20),
        )
       ],
      ),
    );
  }
}
