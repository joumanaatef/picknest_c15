import 'package:flutter/material.dart';
import 'package:picknest/ui/home/tabs/explore/shop_now/product_shoes_widget.dart';
import 'package:picknest/utils/app_routes.dart';
import '../../../../../utils/app_assets.dart';
import '../../../../../utils/app_styles.dart';

class ProductShoes extends StatefulWidget {
  const ProductShoes({super.key});

  @override
  State<ProductShoes> createState() => _ProductShoesState();
}

class _ProductShoesState extends State<ProductShoes> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF0E7E5),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF0E7E5),
        toolbarHeight: height * 0.14,

        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "PickNest",
              style: AppStyles.regular14Green.copyWith(
                fontFamily: 'Calligraffitti',
              ),
            ),

            SizedBox(height: height * 0.01),
            Container(
              height: height * 0.065,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFF929292),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: width * 0.05),
                  const Icon(
                    Icons.search,
                    color: Color(0xFF02412F),
                  ),
                  SizedBox(width: width * 0.03),
                  Text(
                    'what do you search for?',
                    style: AppStyles.regular14Green.copyWith(
                      color: const Color(0xFF929292),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        actions: [
          IconButton(
            padding: EdgeInsets.only(top: height * 0.025),
            icon: const Icon(Icons.shopping_cart_outlined),
            color: const Color(0xFF02412F),
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.cartScreen);
            },
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.only(top: height * 0.03),
        child:
        InkWell(
          onTap: (){
            Navigator.pushReplacementNamed(context, AppRoutes.productScreen);
          },
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: height * 0.025,
            crossAxisSpacing: width * 0.04,
            childAspectRatio: 0.82,
            children:  [
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
    );
  }
}
