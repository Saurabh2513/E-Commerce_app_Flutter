import 'package:e_commerce_app/features/tabs/home/home_screen.dart';
import 'package:e_commerce_app/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryDetailsItem extends StatelessWidget {
  const CategoryDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteCOlor,
      appBar: AppBar(
        backgroundColor: whiteCOlor,
        title: const Text(
          'Hoodies (240)',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.only(top: 20, right: 5, bottom: 20, left: 20),
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
          ],
        ),
      ),
    );
  }
}

class ProductsList extends StatelessWidget {
  final List<Product> products;
  const ProductsList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 30,
          childAspectRatio: 0.7),
      itemCount: products.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, indext) {
        final product = products[indext];
        return ProductCard(
            imagePath: product.imagePath,
            title: product.title,
            price: product.price,
            crossPrice: product.crossPrice, onTap: () {  },);
      },
    );
  }
}
