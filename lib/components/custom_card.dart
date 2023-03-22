import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {

  CustomCard({super.key, required this.mColor , this.mChild ,  this.onPress});
  final Color mColor;
  final Widget? mChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: mColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(10.0),
        child: mChild,
      ),
    );
  }
}
