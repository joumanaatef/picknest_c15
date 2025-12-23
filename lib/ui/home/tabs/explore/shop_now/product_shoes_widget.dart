import 'package:flutter/material.dart';
import 'package:picknest/utils/app_colors.dart';
import 'package:picknest/utils/app_routes.dart';
import '../../../../../utils/app_styles.dart';

class ProductItemsWidget extends StatefulWidget {
  String item;
  String price;
  String image;

  ProductItemsWidget({
    required this.item,
    required this.price,
    required this.image,
  });

  @override
  State<ProductItemsWidget> createState() => _ProductItemsWidgetState();
}

class _ProductItemsWidgetState extends State<ProductItemsWidget> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    child: Image.asset(
                      widget.image,
                      width: double.infinity,
                      height: height * 0.13,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: height * 0.08,
                    right: width * 0.02,
                    child: Container(
                      width: width * 0.09,
                      height: width* 0.09,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, AppRoutes.favScreen);
                        },
                        icon: const Icon(
                          Icons.favorite,
                          color: AppColors.greenColor,
                        ),
                        iconSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Text(
                  widget.item,
                  style: AppStyles.regular14Green,
                ),
                subtitle: Text(
                  widget.price,
                  style: AppStyles.regular14Green.copyWith(fontSize: 10),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: width * 0.04,
          bottom: height * 0.02,
          child: Container(
            width: width * 0.09,
            height: width * 0.09,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: AppColors.greenColor,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, AppRoutes.cartScreen);
              },
              icon: const Icon(
                Icons.add,
                color: AppColors.whiteColor,
              ),
              iconSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
