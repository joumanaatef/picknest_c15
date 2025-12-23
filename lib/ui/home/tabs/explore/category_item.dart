import 'package:flutter/material.dart';
import '../../../../utils/app_styles.dart';

class CategoryItems extends StatelessWidget {
  final String item;
  final String image;

  const CategoryItems({
    super.key,
    required this.item,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          width: width * 0.16,
          height: width * 0.16,
          decoration: BoxDecoration(
            border: Border.all(
              strokeAlign: 1,
              color: const Color(0xFF004182),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Center(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          item,
          style: AppStyles.regular12Green
        ),
      ],
    );
  }
}
