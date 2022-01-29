import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CardIconText.dart';
import 'MyCard.dart';

const bottomContainerHeight = 70.0;
const TapCardColor = Color(0xFF1D1E33);
const myCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = myCardColor;
  Color femaleCardColor = myCardColor;
  void onTapColor(int x) {
    if (x == 1) {
      if (maleCardColor == myCardColor) {
        maleCardColor = TapCardColor;
        femaleCardColor = myCardColor;
      } else {
        maleCardColor = myCardColor;
      }
    } else {
      if (femaleCardColor == myCardColor) {
        femaleCardColor = TapCardColor;
        maleCardColor = myCardColor;
      } else {
        femaleCardColor = myCardColor;
      }
    }
  }

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
                          onTapColor(1);
                        });
                      },
                      child: MyCard(
                        colour: maleCardColor,
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
                          onTapColor(0);
                        });
                      },
                      child: MyCard(
                        colour: femaleCardColor,
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
                colour: myCardColor,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: MyCard(
                      colour: myCardColor,
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      colour: myCardColor,
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
