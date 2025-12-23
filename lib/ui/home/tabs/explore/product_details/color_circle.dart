import 'package:flutter/material.dart';

class ColorCircle extends StatelessWidget {
  final Color color;
  final bool selected;
  final VoidCallback? onTap;
  final double size;
  const ColorCircle({
    super.key,
    required this.color,
    this.selected = false,
    this.onTap,
    this.size = 28,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(size / 2),
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        width: size,
        height: size,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
            ),
            if (selected)
              const Icon(
                Icons.check,
                color: Colors.white,
                size: 18,
              ),
          ],
        ),
      ),
    );
  }
}
