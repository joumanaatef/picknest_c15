import 'package:flutter/material.dart';
import 'package:picknest/ui/home/tabs/explore/product_details/cart/counter_row.dart';
import 'package:picknest/ui/home/tabs/explore/product_details/cart/total_price.dart';
import 'package:picknest/ui/home/tabs/explore/product_details/color_circle.dart';
import 'package:picknest/utils/app_assets.dart';
import 'package:picknest/utils/app_routes.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_styles.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final List<int> sizes = [38, 39, 40, 41, 42];
  final List<Color> colors = [
    Colors.black,
    Colors.brown,
    Colors.blue,
    Colors.green,
    Colors.redAccent,
  ];

  int selectedSize = 40;
  Color selectedColor = Colors.brown;

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
            Navigator.popAndPushNamed(
                context, AppRoutes.productShoesScreen);
          },
          icon: const Icon(Icons.arrow_back),
          color: AppColors.grayColor,
        ),
        title: Text(
          'Product Details',
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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                AppAssets.imgProduct,
                width: double.infinity,
                height: height * 0.38, // بدل 310
                fit: BoxFit.fill,
              ),
            ),

            SizedBox(height: height * 0.025),

            Text(
              "Nike Air Jordon",
              style: AppStyles.bold20Black,
            ),

            SizedBox(height: height * 0.015),

            Row(
              children: [
                const Chip(label: Text("3,230 sold")),
                SizedBox(width: width * 0.025),
                const Icon(Icons.star, color: Colors.amber, size: 20),
                const Text(" 4.8 (7,500)"),
                const Spacer(),
                const CounterRow(),
              ],
            ),

            SizedBox(height: height * 0.025),

            const Text(
              "Description",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            SizedBox(height: height * 0.008),

            const Text(
              "Nike is a multinational corporation that designs, develops, and sells athletic footwear, apparel, and accessories...",
              style: TextStyle(color: AppColors.grayLightColor),
            ),

            SizedBox(height: height * 0.03),

            const Text(
              "Size",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            SizedBox(height: height * 0.015),

            Row(
              children: List.generate(
                sizes.length,
                    (index) {
                  final bool isSelected = sizes[index] == selectedSize;
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedSize = sizes[index];
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: width * 0.025),
                      padding: EdgeInsets.all(width * 0.03),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isSelected
                            ? AppColors.greenColor
                            : AppColors.whiteColor,
                      ),
                      child: Text(
                        sizes[index].toString(),
                        style: TextStyle(
                          color: isSelected
                              ? AppColors.whiteColor
                              : AppColors.blackColor,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: height * 0.03),

            const Text(
              "Colors",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            SizedBox(height: height * 0.015),

            Row(
              children: List.generate(
                colors.length,
                    (index) {
                  final bool isSelected =
                      colors[index] == selectedColor;
                  return ColorCircle(
                    color: colors[index],
                    selected: isSelected,
                    onTap: () {
                      setState(() {
                        selectedColor = colors[index];
                      });
                    },
                  );
                },
              ),
            ),

            SizedBox(height: height * 0.04),

            TotalPrice(
              title: 'Add to cart',
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.cartScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
