import 'package:e_commerce_app/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteCOlor,
      appBar: AppBar(
        backgroundColor: whiteCOlor,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              color: textFiledColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              Iconsax.heart_copy,
            ),
          )
        ],
      ),
    );
  }
}