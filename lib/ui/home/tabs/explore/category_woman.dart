import 'package:flutter/material.dart';
import 'package:picknest/utils/app_routes.dart';
import '../../../../utils/app_assets.dart';
import '../../../../utils/app_styles.dart';
import '../../../../utils/app_colors.dart';
import 'category_item.dart';
import 'menue_item.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFF0E7E5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF0E7E5),
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              child:
              Text(
                'PickNest',
                style: TextStyle(
                  color: AppColors.greenColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding:EdgeInsets.symmetric(horizontal: width*0.04),
            child: Row(
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
          ),
          SizedBox(height: height* 0.01),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left menu
              Container(
                margin:EdgeInsets.symmetric(vertical: height*0.03) ,
                width: width * 0.25,
                color: Colors.white,
                child: Column(
                  children: const [
                    MenueItems(item: "Men’s Fashion", isopen: false),
                    MenueItems(item: "Women’s Fashion", isopen: true),
                    MenueItems(item: "Skincare", isopen: false),
                    MenueItems(item: "Beauty", isopen: false),
                    MenueItems(item: "Headphones", isopen: false),
                    MenueItems(item: "Cameras", isopen: false),
                    MenueItems(item: "Laptops &Electronics", isopen: false),
                  ],
                ),
              ),
              // Right content
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(width * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Women’s Fashion",
                        style: AppStyles.regular14Green.copyWith(
                          color: Colors.black,
                          fontSize: width * 0.04,
                        ),
                      ),
                      SizedBox(height: height * 0.015),
                      Container(
                        width: double.infinity,
                        height: height * 0.12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width * 0.02),
                          border: Border.all(
                            color: const Color(0xFF004182),
                          ),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(width * 0.02),
                              child: Image.asset(
                                AppAssets.womenFashionImg,
                                width: double.infinity,
                                height: height * 0.12,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              left: width * 0.02,
                              top: height * 0.015,
                              child: FittedBox(
                                child: Text(
                                  "Women’s Fashion",
                                  style: AppStyles.regular14Green.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: width * 0.04,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: height * 0.05,
                              left: width * 0.02,
                              child: ElevatedButton(
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
                                child:TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(context, AppRoutes.productShoesScreen);
                                  },
                                  child: Text(
                                  "Shop now !",
                                  style: AppStyles.regular14Green.copyWith(
                                    color: Colors.white,
                                    fontSize: width * 0.035,
                                  ),)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.04),
                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 3,
                        mainAxisSpacing: height * 0.02,
                        crossAxisSpacing: width * 0.02,
                        children: const [
                          CategoryItems(item: "Dresses", image: AppAssets.dressesImg),
                          CategoryItems(item: "Jeans", image: AppAssets.jeansImg),
                          CategoryItems(item: "Skirts", image: AppAssets.skirtsImg),
                          CategoryItems(item: "Footware", image: AppAssets.footwearImg),
                          CategoryItems(item: "Pijamas", image: AppAssets.pijamesImg),
                          CategoryItems(item: "T-shirts", image: AppAssets.shirtsImg),
                          CategoryItems(item: "Bags", image: AppAssets.bagsImg),
                          CategoryItems(item: "Eyewear", image: AppAssets.eyewearImg),
                          CategoryItems(item: "Watches", image: AppAssets.watchImg),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
