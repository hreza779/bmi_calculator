import 'package:flutter/material.dart';
import '../values/colors.dart';
class BottomButton extends StatelessWidget {

  BottomButton({required this.label,required this.onPress});

  final String label;
  VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: 70.0,
        color: bottomCardColor,
        child: Center(
          child: Text(
            label,
          ),
        ),
      ),
    );
  }
}
