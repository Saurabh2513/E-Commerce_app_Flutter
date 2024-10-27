import 'package:e_commerce_app/features/tabs/home/category_details.dart';
import 'package:e_commerce_app/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllCategoryList extends StatelessWidget {
  const AllCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteCOlor,
      appBar: AppBar(
        backgroundColor: whiteCOlor,
        title: const Text(
          "Shop By Categories",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: TextFiledTextColor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            CategoryItemList(
              imagePath: 'assets/images/categories/cate_1.png',
              label: 'Hoodies',
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => CategoryDetailsItem(),
                  ),
                );
              },
            ),
              CategoryItemList(
              imagePath: 'assets/images/categories/cate_2.png',
              label: 'Shorts',
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => CategoryDetailsItem(),
                  ),
                );
              },
            ),
              CategoryItemList(
              imagePath: 'assets/images/categories/cate_3.png',
              label: 'Shoes',
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => CategoryDetailsItem(),
                  ),
                );
              },
            ),
              CategoryItemList(
              imagePath: 'assets/images/categories/cate_4.png',
              label: 'Bag',
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => CategoryDetailsItem(),
                  ),
                );
              },
            ),
             CategoryItemList(
              imagePath: 'assets/images/categories/cate_5.png',
              label: 'Accessories',
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => CategoryDetailsItem(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryItemList extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback? onTap;
  const CategoryItemList(
      {super.key, required this.imagePath, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: textFiledColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                imagePath,
                height: 60,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 12),
            Text(
              label,
              style: TextStyle(
                color: TextFiledTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,

              ),
            )
          ],
        ),
      ),
    );
  }
}
