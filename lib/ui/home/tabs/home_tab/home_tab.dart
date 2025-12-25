import 'package:flutter/material.dart';
import 'package:picknest/utils/app_assets.dart';
import 'package:picknest/utils/app_routes.dart';

class HomeTab extends StatefulWidget {
const HomeTab({super.key});

@override
State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
@override
Widget build(BuildContext context) {
var height = MediaQuery.of(context).size.height;
var width = MediaQuery.of(context).size.width;

return Scaffold(
appBar: AppBar(
backgroundColor: Colors.transparent,
elevation: 0,
title: Container(
height: height * 0.055,
padding: EdgeInsets.symmetric(horizontal: width * 0.03),
decoration: BoxDecoration(
color: const Color(0xFFF0E7E5),
borderRadius: BorderRadius.circular(20),
border: Border.all(color: const Color(0xFF929292), width: 1),
),
child: Row(
children: const [
Icon(Icons.search, color: Color(0xFF02412F)),
SizedBox(width: 25),
Text(
'what do you search for?',
style: TextStyle(color: Color(0xFF929292), fontSize: 16),
),
],
),
),
centerTitle: true,
actions: const [
Padding(
padding: EdgeInsets.all(10.0),
child: Icon(
Icons.shopping_cart_outlined,
color: Color(0xFF02412F),
),
),
],
),
body: Padding(
  padding: const EdgeInsets.all(16.0),
  child: SingleChildScrollView(
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  SizedBox(
  height: height * 0.28,
  width: double.infinity,
  child: Image.asset(
  AppAssets.picknestImg,
  fit: BoxFit.fill,
  ),
  ),
  SizedBox(height: height * 0.025),
  Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  const Text(
  'Categories',
  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
  ),
  TextButton(
  onPressed: () {},
  style: TextButton.styleFrom(
  foregroundColor: Colors.black,
  textStyle: const TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  ),
  ),
  child: const Text('View all'),
  ),
  ],
  ),
  SizedBox(height: height * 0.01),
  GridView.count(
  shrinkWrap: true,
  physics: const NeverScrollableScrollPhysics(),
  crossAxisCount: 4,
  padding: EdgeInsets.symmetric(horizontal: width * 0.012),
  mainAxisSpacing: height * 0.015,
  crossAxisSpacing: width * 0.015,
  childAspectRatio: 0.9,
  children: [
  _buildCategory('Wom Fashion', AppAssets.homeImg1, width),
  _buildCategory('Men Fashion', AppAssets.homeImg2, width),
  _buildCategory('Laptops', AppAssets.homeImg3, width),
  _buildCategory('Baby & Toys', AppAssets.homeImg2, width),
  _buildCategory('Beauty', AppAssets.homeImg4, width),
  _buildCategory('Headphones', AppAssets.homeImg5, width),
  _buildCategory('SkinCare', AppAssets.homeImg6, width),
  _buildCategory('Cameras', AppAssets.homeImg3, width),
  ],
  ),
  SizedBox(height: height * 0.01),
  Padding(
  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
  child: const Text(
  'Home Appliance',
  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
  ),
  ),
  SizedBox(height: height * 0.01),
  SizedBox(
  height: height * 0.73,
  child: ListView(
  scrollDirection: Axis.horizontal,
  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
  children: [
  _buildProduct(AppAssets.homeImg7, width),
  _buildProduct(AppAssets.homeImg9, width),
  _buildProduct(AppAssets.homeImg8, width),
  ],
  ),
  ),
  SizedBox(height: height * 0.03),
  ],
  ),
  ),
),
);
}

Widget _buildCategory(String title, String imagePath, double width) {
return Column(
children: [
Container(
width: width * 0.14,
height: width * 0.14,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(60),
color: Colors.grey[200],
image: DecorationImage(
image: AssetImage(imagePath),
fit: BoxFit.fill,
),
),
),
const SizedBox(height: 8),
Text(
title,
textAlign: TextAlign.center,
style: const TextStyle(fontSize: 13),
),
],
);
}

Widget _buildProduct(String imagePath, double width) {
return Container(
width: width * 0.25,
margin: EdgeInsets.only(right: width * 0.04),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(12),
image: DecorationImage(
image: AssetImage(imagePath),
fit: BoxFit.cover,
),
),
child: Stack(
children: [
Positioned(
top: 8,
right: 8,
child: IconButton(
icon: const Icon(
Icons.favorite_border_rounded,
color: Color(0xFF02412F),
),
onPressed: () {
Navigator.pushReplacementNamed(context, AppRoutes.favScreen);
},
),
),
],
),
);
}
}