import 'package:e_commerce_app/utils/constant.dart';
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
            padding: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              color: textFiledColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(
              Iconsax.heart_copy,
            ),
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              ProductSlide(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductSlide extends StatelessWidget {
  const ProductSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset('assets/images/products/product_1.png'),
          const SizedBox(width: 30),
          Image.asset('assets/images/products/product_2.png'),
        ],
      ),
    );
  }
}
