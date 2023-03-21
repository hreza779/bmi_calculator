import 'package:flutter/material.dart';
import '../values/strings.dart';
import '../values/colors.dart';
import '../components/custom_card.dart';
import '../components/custom_icon.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                      mColor: cardColor,
                      mChild: CustomIcon(
                        mIcon: Icons.male,
                        label: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: CustomCard(
                      mColor: cardColor,
                      mChild: CustomIcon(
                        mIcon: Icons.female,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CustomCard(
                mColor: cardColor,
                mChild: Text('test'),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomCard(
                      mColor: cardColor,
                      mChild: Text('test'),
                    ),
                  ),
                  Expanded(
                    child: CustomCard(
                      mColor: cardColor,
                      mChild: Text('test'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
