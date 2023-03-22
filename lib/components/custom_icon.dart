import 'package:bmi_calculator/values/constants.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({required this.label, required this.mIcon});

  final String label;
  final IconData mIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          mIcon,
          size: 80.0,
        ),
        Text(label, style: labelTextStyle),
      ],
    );
  }
}
