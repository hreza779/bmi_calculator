import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {

  CustomCard({super.key, required this.mColor , required this.mChild});
  final Color mColor;
  final Widget mChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: mColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(10.0),
      child: mChild,
    );
  }
}
