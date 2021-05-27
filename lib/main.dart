import 'package:bmi_calc/pages/input_page.dart';
import 'package:bmi_calc/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: MyTheme(context: context).theme,
    );
  }
}
