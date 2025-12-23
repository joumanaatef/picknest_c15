import 'package:flutter/material.dart';
import '../../../../utils/app_styles.dart';

class MenueItems extends StatelessWidget {
  final String item;
  final bool isopen;

  const MenueItems({
    super.key,
    required this.item,
    required this.isopen,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: height * 0.09,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      decoration: BoxDecoration(
        color: isopen ? const Color(0xFFF0E7E5) : Colors.transparent,
        border: isopen
            ? Border(
          left: BorderSide(
            color: const Color(0xFF02412F),
            width: width * 0.01,
          ),
        )
            : null,
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          item,
          style: AppStyles.regular14Black,
        ),
      ),
    );
  }
}
