import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CardIconText.dart';
import 'MyCard.dart';
import 'constants.dart';

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: MyCard(
                      onPress: () {
                        setState(
                          () {
                            SelectedGender = Gender.male;
                          },
                        );
                      },
                      colour: SelectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: CardIconText(
                        cardIcon: FontAwesomeIcons.mars,
                        cardText: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      onPress: () {
                        setState(() {
                          SelectedGender = Gender.female;
                        });
                      },
                      colour: SelectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: CardIconText(
                        cardIcon: FontAwesomeIcons.venus,
                        cardText: "FEMALE",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyCard(
                colour: kInactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "HEIGHT",
                      style: kCardTextStyle,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: MyCard(
                      colour: kInactiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      colour: kInactiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor,
              height: kBottomContainerHeight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
            )
          ],
        ),
      ),
    );
  }
}
