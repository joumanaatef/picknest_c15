import 'package:flutter/material.dart';

class ProfileField extends StatelessWidget {
  final String label;
  final String value;

  const ProfileField({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        SizedBox(height: height * 0.008),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.04,
            vertical: height * 0.018,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF02412F)),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Text(value),
              Icon(Icons.edit, size: 18),
            ],
          ),
        ),
        SizedBox(height: height * 0.02),
      ],
    );
  }
}
