import 'package:flutter/material.dart';
import 'package:picknest/ui/home/tabs/fav/product_widget.dart';

import '../../../../utils/app_assets.dart';
import '../../../../utils/app_colors.dart';
import 'product_cart.dart';

class FavTab extends StatelessWidget {
  FavTab({super.key});

  final List<Product> products = [
    Product(
      name: 'Nike Air Jordon',
      color: 'Black',
      price: 1200,
      oldPrice: 1500,
      image: AppAssets.favImg,
    ),
    Product(
      name: 'Tall Cotton Dress',
      color: 'Orange',
      price: 700,
      oldPrice: 750,
      image: AppAssets.favImg1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffF7F2EE),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const
        Text(
          'PickNest',
          style: TextStyle(
            color: AppColors.greenColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body:
      Padding(
        padding: EdgeInsets.all(width * 0.05),
        child:
        Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'what do you search for?',
                      prefixIcon: const Icon(Icons.search, size: 18),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: height * 0.02,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: width * 0.03),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: AppColors.greenColor,
                  size: width * 0.07,
                ),
              ],
            ),
            SizedBox(height: height * 0.03),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductCart(
                    product: product,
                    icon: Column(
                      children: [
                        const Icon(
                          Icons.favorite,
                          color: AppColors.greenColor,
                          size: 22,
                        ),
                        SizedBox(height: height * 0.015),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.greenColor,
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.04,
                              vertical: height * 0.008,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          child: const Text(
                            'Add to Cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
