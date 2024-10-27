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
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              HeaderRow(),
              SizedBox(height: 20),
              SearchBar(),
              const SizedBox(height: 24),
              const Section(
                titel: 'Categories',
                seeAll: true,
                child: CategoriesSection(),
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
              Section(
                titel: 'New In',
                seeAll: true,
                child: Container(),
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
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
  const Section(
      {super.key,
      required this.titel,
      required this.seeAll,
      required this.child});

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
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (seeAll)
              Text(
                'See All',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
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
        children: const [
          CategoryItem(
              imagePath: 'assets/images/categories/cate_1.png',
              label: 'categorie 1'),
          CategoryItem(
              imagePath: 'assets/images/categories/cate_2.png',
              label: 'categorie 2'),
          CategoryItem(
              imagePath: 'assets/images/categories/cate_3.png',
              label: 'categorie 3'),
          CategoryItem(
              imagePath: 'assets/images/categories/cate_4.png',
              label: 'categorie 4'),
          CategoryItem(
              imagePath: 'assets/images/categories/cate_5.png',
              label: 'categorie 5'),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String imagePath;
  final String label;
  const CategoryItem({super.key, required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      margin: EdgeInsets.only(right: 20),
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
                  icon: Icon(Iconsax.heart_copy),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: TextFiledTextColor.withOpacity(0.8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
