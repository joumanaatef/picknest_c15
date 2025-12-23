import 'package:flutter/material.dart';
import '../../../../../../utils/app_colors.dart';

class CounterRow extends StatefulWidget {
  const CounterRow({super.key});

  @override
  State<CounterRow> createState() => _CounterRowState();
}

class _CounterRowState extends State<CounterRow> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.025,
        vertical: height * 0.008,
      ),
      decoration: BoxDecoration(
        color: AppColors.gray66Opacity,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              if (count > 1) {
                setState(() {
                  count--;
                });
              }
            },
            child: const Icon(
              Icons.remove_circle_outline,
              color: AppColors.greenColor,
              size: 18,
            ),
          ),

          SizedBox(width: width * 0.02),

          Text(
            '$count',
            style: const TextStyle(
              color: AppColors.whiteColor,
            ),
          ),

          SizedBox(width: width * 0.02), // بدل 8

          InkWell(
            onTap: () {
              setState(() {
                count++;
              });
            },
            child: const Icon(
              Icons.add_circle_outline,
              color: AppColors.greenColor,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
