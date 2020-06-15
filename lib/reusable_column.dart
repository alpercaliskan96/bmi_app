import 'package:bmiapp/constants.dart';
import 'package:flutter/material.dart';

class ReusableColumn extends StatelessWidget {
  ReusableColumn({@required this.genderIcon, @required this.centerText});

  final IconData genderIcon;
  final String centerText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 60.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          centerText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
