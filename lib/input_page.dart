import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CardIconText.dart';
import 'MyCard.dart';

const bottomContainerHeight = 70.0;
const ActiveCardColor = Color(0xFF1D1E33);
const InactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender SelectedGender;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          SelectedGender = Gender.male;
                        });
                      },
                      child: MyCard(
                        colour: SelectedGender == Gender.male
                            ? ActiveCardColor
                            : InactiveCardColor,
                        cardChild: CardIconText(
                          cardIcon: FontAwesomeIcons.mars,
                          cardText: "MALE",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          SelectedGender = Gender.female;
                        });
                      },
                      child: MyCard(
                        colour: SelectedGender == Gender.female
                            ? ActiveCardColor
                            : InactiveCardColor,
                        cardChild: CardIconText(
                          cardIcon: FontAwesomeIcons.venus,
                          cardText: "FEMALE",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyCard(
                colour: InactiveCardColor,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: MyCard(
                      colour: InactiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      colour: InactiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              height: bottomContainerHeight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
            )
          ],
        ),
      ),
    );
  }
}
