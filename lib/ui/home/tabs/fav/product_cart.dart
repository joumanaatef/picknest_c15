import 'package:flutter/material.dart';
import 'package:picknest/ui/home/tabs/fav/product_widget.dart';
import '../../../../utils/app_colors.dart';

class ProductCart extends StatelessWidget {
  final Product product;
  final Widget? icon;
  final Widget? bottom;

  const ProductCart({
    super.key,
    required this.product,
    this.icon,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(bottom: height * 0.02),
      decoration: BoxDecoration(
        color: AppColors.blueLightColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffE7D7F3),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Image.asset(
              product.image,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: width * 0.03),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: height * 0.005),
                Text(
                  '${product.color} Size 40',
                  style: const TextStyle(fontSize: 12),
                ),
                SizedBox(height: height * 0.008),
                Text(
                  'EGP ${product.price}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (bottom != null) ...[
                  SizedBox(height: height * 0.01),
                  bottom!,
                ],
              ],
            ),
          ),
          if (icon != null) icon!,
        ],
      ),
    );
  }
}
