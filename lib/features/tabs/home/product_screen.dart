import 'package:e_commerce_app/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductSlide(),
              SizedBox(width: 30),
              Text(
                "Men's Harrington jacket",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                "\$148",
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(width: 20),
              Container(
                decoration: BoxDecoration(

                ),
              ),
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
          const SizedBox(width: 30),
          Image.asset('assets/images/products/product_3.png'),
          const SizedBox(width: 30),
          Image.asset('assets/images/products/product_4.png'),
        ],
      ),
    );
  }
}
