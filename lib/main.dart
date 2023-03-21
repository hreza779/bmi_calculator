import 'package:flutter/material.dart';
import 'input_page.dart';
import 'colors.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor:  primaryColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
      ),
      home: InputPage(),
    );
  }
}