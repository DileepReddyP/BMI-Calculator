import 'package:flutter/material.dart';

class CardInternals extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color color;
  const CardInternals({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: color,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: color,
          ),
        )
      ],
    );
  }
}
