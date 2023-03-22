import 'package:bmi_calculator/screens/result_page.dart';
import 'package:bmi_calculator/values/constants.dart';
import 'package:flutter/material.dart';
import '../calculator_brain.dart';
import '../components/bottom_button.dart';
import '../values/strings.dart';
import '../values/colors.dart';
import '../components/custom_card.dart';
import '../components/rounded_icon_button.dart';
import '../components/custom_icon.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appbarTitle),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      mColor: selectedGender == Gender.male
                          ? cardColor
                          : inactiveCardColor,
                      mChild: CustomIcon(
                        mIcon: Icons.male,
                        label: male,
                      ),
                    ),
                  ),
                  Expanded(
                    child: CustomCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      mColor: selectedGender == Gender.female
                          ? cardColor
                          : inactiveCardColor,
                      mChild: CustomIcon(
                        mIcon: Icons.female,
                        label: female,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CustomCard(
                mColor: cardColor,
                mChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      strHeight,
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: numberTextStyle,
                        ),
                        const Text(
                          strUnit,
                          style: labelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF414141),
                        thumbColor: Color(0xFFD7005A),
                        overlayColor: Color(0x26D7005A),
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 15.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        min: sliderMinValue,
                        max: sliderMaxValue,
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomCard(
                      mColor: cardColor,
                      mChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            strWeight,
                            style: labelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: numberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedIconButton(
                                icon: Icons.add,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundedIconButton(
                                icon: Icons.minimize,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: CustomCard(
                      mColor: cardColor,
                      mChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            strAge,
                            style: labelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: numberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedIconButton(
                                icon: Icons.add,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RoundedIconButton(
                                icon: Icons.minimize,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              label: calculateYourBMI,
              onPress: (){
                CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
                calc.calculateBMI();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResultPage(
                      bmiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interpretation: calc.getInterpretation(),
                    )));
              },
            ),
          ],
        ),
      ),
    );
  }
}

