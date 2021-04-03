import 'package:flutter/material.dart';

class Qustion extends StatelessWidget {
  final String qustiontext;

  Qustion( this.qustiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        qustiontext,
        style: TextStyle(
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
