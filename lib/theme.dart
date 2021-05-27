import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';

class MyTheme {
  final BuildContext context;
  ThemeData theme;
  MyTheme({this.context}) {
    theme = ThemeData.dark().copyWith(
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: kScaffoldBackgroundColor,
      accentColor: kAccentColor,
      bottomAppBarColor: kThemeColor,
      textTheme: ThemeData.dark().textTheme.apply(fontFamily: kFont),
      primaryTextTheme: ThemeData.dark().textTheme.apply(fontFamily: kFont),
      sliderTheme: SliderTheme.of(context).copyWith(
        trackHeight: 1.0,
        activeTrackColor: kThemeColor,
        inactiveTrackColor: kUnSelectedTextColor,
        thumbColor: kThemeColor,
        overlayColor: kThemeColor.withOpacity(0.25),
        overlayShape: RoundSliderOverlayShape(
          overlayRadius: 20.0,
        ),
      ),
    );
  }
}

//#
