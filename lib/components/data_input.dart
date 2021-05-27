import 'package:bmi_calc/components/round_icon_button.dart';
import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DataInput extends StatefulWidget {
  final String label;
  final String unit;
  final int number;
  final VoidCallback decrementFunction;
  final VoidCallback incrementFunction;

  DataInput({
    this.label,
    this.number,
    this.unit,
    this.incrementFunction,
    this.decrementFunction,
  });

  @override
  _DataInputState createState() => _DataInputState();
}

class _DataInputState extends State<DataInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.label,
            style: kLabelTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                widget.number.toString(),
                style: kNumberTextStyle,
              ),
              Text(
                widget.unit,
                style: kLabelTextStyle,
              ),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RoundIconButton(
                iconData: FontAwesomeIcons.minus,
                onPressed: widget.decrementFunction,
              ),
              RoundIconButton(
                iconData: FontAwesomeIcons.plus,
                onPressed: widget.incrementFunction,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
