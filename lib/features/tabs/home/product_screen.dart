import 'package:e_commerce_app/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProductSlide(),
                const SizedBox(width: 30),
                const Text(
                  "Men's Harrington jacket",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  "\$148",
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: textFiledColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Size',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Row(
                          children: [
                            Text(
                              'S',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 20),
                            Icon(Iconsax.arrow_down_1_copy)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: textFiledColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Color',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Icon(Iconsax.arrow_down_1_copy)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: textFiledColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Quantity',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                color: primaryColor,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                CupertinoIcons.minus,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              '1',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                color: primaryColor,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                CupertinoIcons.plus,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'The technical details, including the use of power words and A/B tests, can be the difference between a potential buyer on your ecommerce website and those customers shopping at a competitor with similar products.',
                  style: TextStyle(
                    color: TextFiledTextColor,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Shipping & Return',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Free Started Shipping and free 60-days return',
                  style: TextStyle(
                    color: TextFiledTextColor,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  '4.5 Rating',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text('216 Reviews'),
                const SizedBox(height: 20),
                const ReviewsSection(),
                const SizedBox(height: 30),
                const ReviewsSection(),
                const SizedBox(height: 30),
              ],
            ),
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

// reviews section
class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/images/profile.png'),
                const SizedBox(width: 20),
                const Text(
                  'Sagar Yadav',
                  style: TextStyle(
                    color: TextFiledTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 40),
              ],
            ),
            StarRating(
              allowHalfRating: false,
              rating: 3,
              color: primaryColor,
            )
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          "I recently dined at [RestaurantName] and was thoroughly impressed by both the exquisite cuisine and the impeccable service. The menu showcased a variety of innovative dishes, blending bold flavors and beautiful presentation.",
          style: TextStyle(
            color: TextFiledTextColor,
          ),
        ),
        const Text(
          "10 days ago",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500
          ),
        ),
      ],
    );
  }
}
