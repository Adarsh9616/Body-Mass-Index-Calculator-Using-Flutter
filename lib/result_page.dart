import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_button.dart';

class ResultPage extends StatelessWidget {
  final String t1;
  final String t2;
  final String t3;
  ResultPage({@required this.t1, @required this.t2, @required this.t3});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'Your Result',
                    style: kTitleText,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableBox(
                colour: kInactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      t1.toUpperCase(),
                      style: kResultText,
                    ),
                    Text(
                      t2,
                      style: kResSecText,
                    ),
                    Text(
                      t3,
                      textAlign: TextAlign.center,
                      style: kBodyText,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              title: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
