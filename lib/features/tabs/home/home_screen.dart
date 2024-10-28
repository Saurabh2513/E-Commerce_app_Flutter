import 'package:e_commerce_app/features/tabs/home/all_category_list.dart';
import 'package:e_commerce_app/features/tabs/home/category_details.dart';
import 'package:e_commerce_app/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteCOlor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const HeaderRow(),
              const SizedBox(height: 20),
              const SearchBar(),
              const SizedBox(height: 24),
              Section(
                titel: 'Categories',
                seeAll: true,
                child: CategoriesSection(),
                onSeeAllPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const AllCategoryList(),
                      ));
                },
              ),
              const SizedBox(height: 24),
              const Section(
                titel: 'Top Selling',
                seeAll: true,
                child: ProductList(
                  products: [
                    Product(
                        imagePath: 'assets/images/products/product_1.png',
                        title: 'product 1',
                        price: '\$29.99',
                        crossPrice: '\$10.00'),
                    Product(
                        imagePath: 'assets/images/products/product_2.png',
                        title: 'product 1',
                        price: '\$29.99',
                        crossPrice: '\$20.00'),
                    Product(
                        imagePath: 'assets/images/products/product_3.png',
                        title: 'product 3',
                        price: '\$29.99',
                        crossPrice: '\$30.00'),
                    Product(
                        imagePath: 'assets/images/products/product_4.png',
                        title: 'product 4',
                        price: '\$29.99',
                        crossPrice: '\$40.00'),
                    Product(
                        imagePath: 'assets/images/products/product_5.png',
                        title: 'product 5',
                        price: '\$29.99',
                        crossPrice: '\$50.00'),
                    Product(
                        imagePath: 'assets/images/products/product_6.png',
                        title: 'product 6',
                        price: '\$29.99',
                        crossPrice: '\$60.00'),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Section(
                titel: 'New In',
                seeAll: true,
                child: ProductList(
                  products: [
                    Product(
                        imagePath: 'assets/images/products/product_5.png',
                        title: 'product 1',
                        price: '\$29.99',
                        crossPrice: '\$10.00'),
                    Product(
                        imagePath: 'assets/images/products/product_3.png',
                        title: 'product 1',
                        price: '\$29.99',
                        crossPrice: '\$20.00'),
                    Product(
                        imagePath: 'assets/images/products/product_4.png',
                        title: 'product 3',
                        price: '\$29.99',
                        crossPrice: '\$30.00'),
                    Product(
                        imagePath: 'assets/images/products/product_2.png',
                        title: 'product 4',
                        price: '\$29.99',
                        crossPrice: '\$40.00'),
                    Product(
                        imagePath: 'assets/images/products/product_6.png',
                        title: 'product 5',
                        price: '\$29.99',
                        crossPrice: '\$50.00'),
                    Product(
                        imagePath: 'assets/images/products/product_1.png',
                        title: 'product 6',
                        price: '\$29.99',
                        crossPrice: '\$60.00'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderRow extends StatelessWidget {
  const HeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('assets/images/profile.png'),
        ),
        DropdownButton<String>(
          items: <String>['Services 1', 'Services 2', 'Services 2'].map(
            (String value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            },
          ).toList(),
          onChanged: (value) {},
          hint: const Text('services'),
        ),
        Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.bag_2_copy,
                color: whiteCOlor,
              ),
            )),
      ],
    );
  }
}

// Search Bar
class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      placeholder: 'Search...',
      placeholderStyle: TextStyle(color: TextFiledTextColor.withOpacity(0.5)),
      prefix: const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Icon(Iconsax.search_normal_1_copy),
      ),
      decoration: BoxDecoration(
        color: textFiledColor,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}

// Section
class Section extends StatelessWidget {
  final String titel;
  final bool seeAll;
  final Widget child;
  final VoidCallback? onSeeAllPressed;
  const Section(
      {super.key,
      required this.titel,
      required this.seeAll,
      required this.child,
      this.onSeeAllPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titel,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (seeAll)
              GestureDetector(
                onTap: onSeeAllPressed,
                child: const Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
          ],
        ),
        const SizedBox(height: 10),
        child
      ],
    );
  }
}

// categories Section
class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryItem(
            imagePath: 'assets/images/categories/cate_1.png',
            label: 'categorie 1',
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const CategoryDetailsItem(),
                ),
              );
            },
          ),
          CategoryItem(
              imagePath: 'assets/images/categories/cate_2.png',
              label: 'categorie 2'
              ,
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const CategoryDetailsItem(),
                ),
              );
            },
              ),
          CategoryItem(
              imagePath: 'assets/images/categories/cate_3.png',
              label: 'categorie 3'
              ,
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const CategoryDetailsItem(),
                ),
              );
            },
              ),
          CategoryItem(
              imagePath: 'assets/images/categories/cate_4.png',
              label: 'categorie 4'
              ,
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const CategoryDetailsItem(),
                ),
              );
            },
              ),
          CategoryItem(
              imagePath: 'assets/images/categories/cate_5.png',
              label: 'categorie 5'
              ,
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const CategoryDetailsItem(),
                ),
              );
            },
              ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback onTap;
  const CategoryItem(
      {super.key,
      required this.imagePath,
      required this.label,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        margin: const EdgeInsets.only(right: 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              label,
              style: const TextStyle(
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

// Top Selling Section
class Product {
  final String imagePath;
  final String title;
  final String price;
  final String crossPrice;

  const Product({
    required this.imagePath,
    required this.title,
    required this.price,
    required this.crossPrice,
  });
}

class ProductList extends StatelessWidget {
  final List<Product> products;

  const ProductList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductCard(
              imagePath: product.imagePath,
              title: product.title,
              price: product.price,
              crossPrice: product.crossPrice);
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final String crossPrice;

  const ProductCard(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.price,
      required this.crossPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: textFiledColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: const Icon(Iconsax.heart_copy),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: TextFiledTextColor.withOpacity(0.8),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    color: TextFiledTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  crossPrice,
                  style: TextStyle(
                    color: TextFiledTextColor.withOpacity(0.5),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
