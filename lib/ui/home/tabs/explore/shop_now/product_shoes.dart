import 'package:flutter/material.dart';
import 'package:picknest/ui/home/tabs/explore/shop_now/product_shoes_widget.dart';
import '../../../../../utils/app_assets.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_routes.dart';

class ProductShoes extends StatefulWidget {
  const ProductShoes({super.key});

  @override
  State<ProductShoes> createState() => _ProductShoesState();
}

class _ProductShoesState extends State<ProductShoes> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF0E7E5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'PickNest',
          style: TextStyle(
            color: AppColors.greenColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 0.03),
        child: Column(
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
                        vertical: height * 0.018,
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
            SizedBox(height: height * 0.02),
            Expanded(
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(context, AppRoutes.productScreen);
                },
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: height * 0.025,
                  crossAxisSpacing: width * 0.04,
                  childAspectRatio: 0.82,
                  children: [
                    ProductItemsWidget(
                      item: 'Nike Air Jordon',
                      price: '1000 EGY',
                      image: AppAssets.shoesImg1,
                    ),
                    ProductItemsWidget(
                      item: 'Nike Air Jordon',
                      price: '1200 EGY',
                      image: AppAssets.shoesImg2,
                    ),
                    ProductItemsWidget(
                      item: 'Nike Air Jordon',
                      price: '1500 EGY',
                      image: AppAssets.shoesImg3,
                    ),
                    ProductItemsWidget(
                      item: 'Nike Air Jordon',
                      price: '1400 EGY',
                      image: AppAssets.shoesImg4,
                    ),
                    ProductItemsWidget(
                      item: 'Nike Air Jordon',
                      price: '2000 EGY',
                      image: AppAssets.shoesImg5,
                    ),
                    ProductItemsWidget(
                      item: 'Nike Air Jordon',
                      price: '1800 EGY',
                      image: AppAssets.shoesImg6,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
