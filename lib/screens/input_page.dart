import 'package:flutter/material.dart';
import '../values/strings.dart';
import '../values/colors.dart';
import '../components/custom_card.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appbarTitle),
      ),
      body: Center(
        child: Column(
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
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomCard(
                      mColor: cardColor,
                    ),
                  ),
                  Expanded(
                    child: CustomCard(
                      mColor: cardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70.0,
              color: bottomCardColor,
              child: Center(
                child: Text(calculateYourBMI),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
