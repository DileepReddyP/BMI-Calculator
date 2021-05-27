import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final kFont = GoogleFonts.raleway().fontFamily;
final kThemeColor = Color(0xFFB70036);
final kNormalColor = Color(0xFF171727);
final kUnSelectedTextColor = Color(0xFF7A7B86);
final kPrimaryColor = Color(0xFF0A0B1A);
final kScaffoldBackgroundColor = Color(0xFF0B0B1A);
final kAccentColor = Color(0xFFE50044);
final kButtonColor = Color(0xFF383746);

final kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: kUnSelectedTextColor,
);
const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);
enum Gender {
  Male,
  Female,
}
