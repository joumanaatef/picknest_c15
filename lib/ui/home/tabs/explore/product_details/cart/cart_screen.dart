import 'package:flutter/material.dart';
import 'package:picknest/ui/home/tabs/explore/product_details/cart/counter_row.dart';
import 'package:picknest/ui/home/tabs/explore/product_details/cart/total_price.dart';
import 'package:picknest/ui/home/tabs/fav/product_widget.dart';
import 'package:picknest/utils/app_routes.dart';

import '../../../../../../utils/app_assets.dart';
import '../../../../../../utils/app_colors.dart';
import '../../../../../../utils/app_styles.dart';
import '../../../fav/product_cart.dart';

class CartScreen extends StatefulWidget {
  CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<Product> products = [
    Product(
      name: 'Nike Air Jordon',
      color: 'Orange',
      price: 1200,
      image: AppAssets.imgCart,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.productScreen);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.grayColor,
          ),
        ),
        title: Text(
          'Cart',
          style: AppStyles.medium20Green,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              color: AppColors.greenColor,
            ),
          ),
          SizedBox(width: width * 0.01),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: AppColors.greenColor,
            ),
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductCart(
                    product: product,
                    icon: Padding(
                      padding: EdgeInsets.all(width * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Icon(
                            Icons.delete_outline,
                            size: 22,
                            color: AppColors.greenColor,
                          ),

                          SizedBox(height: height * 0.035),

                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.025,
                              vertical: height * 0.008,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.gray66Opacity,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: const CounterRow(),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            TotalPrice(
              title: 'Check Out',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
