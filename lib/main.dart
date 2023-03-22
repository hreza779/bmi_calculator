import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'values/colors.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor:  primaryColor,
        appBarTheme: AppBarTheme(
          color: primaryColor,
        ),
        scaffoldBackgroundColor: scaffoldBackgroundColor,
      ),
      home: InputPage(),
    );
  }
}
