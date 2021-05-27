import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData iconData;

  RoundIconButton({this.iconData, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      highlightElevation: 0.0,
      focusElevation: 0.0,
      splashColor: Colors.transparent,
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: kButtonColor,
      child: Icon(
        iconData,
      ),
    );
  }
}
