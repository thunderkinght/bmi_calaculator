import 'package:flutter/material.dart';
import 'resuseable_card.dart';
import 'input_page.dart';

const bottomheight = 60.0;
const activecolour = Color(0xFF1D1E33);
const inactivecolour = Color(0xFF111328);
const bottomcolor = Colors.red;

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiresult,
      required this.resultText,
      required this.interpretation});

  final String bmiresult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
        ),
        body: Column(
          children: <Widget>[
            Text(
              "Your Result",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(
              child: ReuseableCard(
                colour: inactivecolour,
                cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resultText.toUpperCase(),
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        bmiresult,
                        style: TextStyle(
                          fontSize: 90.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      )
                    ]),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context) {
                  return InputPage();
                }));
              },
              child: Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Re-Calculate",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30.0,
                        ),
                      ),
                    ]),
                color: bottomcolor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: bottomheight,
              ),
            )
          ],
        ));
  }
}
