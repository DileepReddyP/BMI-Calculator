import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Color color;
  final Widget child;
  MyCard({Key key, @required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: child,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
      ),
    );
  }
}
