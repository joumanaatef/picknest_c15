import 'package:flutter/material.dart';
import 'package:picknest/utils/app_styles.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(
          'Product details',
         ),
      ),
    );
  }
}
