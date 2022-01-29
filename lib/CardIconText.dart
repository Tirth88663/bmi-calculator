import 'package:flutter/material.dart';

const cardTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Color(0xFF8D8E98),
);
const iconSize = 80.0;

class CardIconText extends StatelessWidget {
  CardIconText({@required this.cardIcon, @required this.cardText});
  final IconData cardIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: iconSize,
        ),
        SizedBox(height: 15.0),
        Text(
          cardText,
          style: cardTextStyle,
        )
      ],
    );
  }
}
