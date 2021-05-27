import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String text;

  const BottomButton({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15.0,
          bottom: 15.0,
        ),
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
