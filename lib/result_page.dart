import 'package:bmiapp/constants.dart';
import 'package:bmiapp/input_page.dart';
import 'package:bmiapp/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.calculate,
      @required this.getResult,
      @required this.getAdvice});

  final String calculate;
  final String getResult;
  final String getAdvice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: Text(
                'Your Result',
                style: kResultTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    getResult.toUpperCase(),
                    style: kResultCenterTextStyle,
                  ),
                  Text(
                    calculate,
                    style: kBMIResultTextStyle,
                  ),
                  Text(
                    getAdvice,
                    textAlign: TextAlign.center,
                    style: kAdviceResultTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'Recalculate',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
