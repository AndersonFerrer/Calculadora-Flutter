// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Botones extends StatelessWidget {
  const Botones(
      {required this.text,
      required this.fillColor,
      required this.textSize,
      required this.textColor,
      required this.callback});

  final String text;
  final double textSize;
  final int fillColor;
  final int textColor;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 80,
        child: FloatingActionButton(
          backgroundColor: Color(fillColor),
          onPressed: () => {callback(text)},
          child: Text(
            text,
            style: TextStyle(fontSize: textSize, color: Color(textColor)),
          ),
        ),
      ),
    );
  }
}
