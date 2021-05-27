import 'package:bmi_calc/components/bottom_button.dart';
import 'package:bmi_calc/components/my_card.dart';
import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String decision;
  final double bmi;
  final String advice;
  ResultsPage({this.advice, this.bmi, this.decision});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 20.0, 0.0, 20.0),
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(
                bottom: 12.0,
              ),
              child: MyCard(
                  color: kNormalColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        decision,
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w900,
                          color: (bmi > 18.5 && bmi < 25)
                              ? Colors.greenAccent.shade400
                              : Colors.redAccent.shade400,
                        ),
                      ),
                      Text(
                        bmi.toStringAsFixed(1),
                        style: TextStyle(
                          fontSize: 100.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'Normal BMI range:\n18.5 - 25 kg/m\u00B2',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                          height: 1.5,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          advice,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                            height: 1.5,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  )),
            )),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: BottomButton(
            text: 'Recalculate YOur BMI',
          ),
        ),
      ),
    );
  }
}
