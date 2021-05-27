import 'package:bmi_calc/bmi_calculation.dart';
import 'package:bmi_calc/components/bottom_button.dart';
import 'package:bmi_calc/components/my_card.dart';
import 'package:bmi_calc/components/data_input.dart';
import 'package:bmi_calc/components/gender_indicator.dart';
import 'package:bmi_calc/constants.dart';
import 'package:bmi_calc/pages/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selected = Gender.Female;
  double height = 180;
  int age = 18;
  int weight = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //gender buttons
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = Gender.Male;
                      });
                    },
                    child: MyCard(
                      color:
                          selected == Gender.Male ? kThemeColor : kNormalColor,
                      child: CardInternals(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                        color: selected == Gender.Male
                            ? Colors.white
                            : kUnSelectedTextColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = Gender.Female;
                      });
                    },
                    child: MyCard(
                      color: selected == Gender.Female
                          ? kThemeColor
                          : kNormalColor,
                      child: CardInternals(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                        color: selected == Gender.Female
                            ? Colors.white
                            : kUnSelectedTextColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //slider
          Expanded(
            child: MyCard(
              color: kNormalColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toStringAsFixed(1),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height,
                    min: 100.0,
                    max: 250.0,
                    onChanged: (double value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          //plus-minus buttons
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyCard(
                    color: kNormalColor,
                    child: DataInput(
                      label: 'WEIGHT',
                      number: weight,
                      unit: 'kg',
                      incrementFunction: () => setState(() => weight++),
                      decrementFunction: () => setState(() => weight--),
                    ),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    color: kNormalColor,
                    child: DataInput(
                      label: 'AGE',
                      number: age,
                      unit: 'yo',
                      incrementFunction: () => setState(() => age++),
                      decrementFunction: () => setState(() => age--),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: GestureDetector(
          onTap: () {
            List bmi = BMICalculator(
              height: height,
              weight: weight.toDouble(),
            ).calculateBMI();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultsPage(
                  bmi: bmi[0],
                  decision: bmi[1],
                  advice: bmi[2],
                ),
              ),
            );
          },
          child: BottomButton(
            text: 'Calculate your BMI',
          ),
        ),
      ),
    );
  }
}
