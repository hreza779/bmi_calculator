import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/custom_card.dart';
import 'package:bmi_calculator/values/colors.dart';
import 'package:bmi_calculator/values/constants.dart';
import 'package:flutter/material.dart';
import '../values/strings.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: const Text(
                strResult,
                style: resultTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CustomCard(
              mColor: cardColor,
              mChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Normal',
                    style: resultTextStyle,
                  ),
                  Text(
                    '28.0',
                    style: bmiTextStyle,
                  ),
                  Text(
                    'Your BMI is good!',
                    style: resultBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              label: calculateYourBMI,
              onPress: () {
                Navigator.pop(context);
              },
          ),
        ],
      ),
    );
  }
}
