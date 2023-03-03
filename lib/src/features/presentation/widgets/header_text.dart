import 'package:flutter/material.dart';

Widget headerText({
  required String text,
  required Color color,
  required double fontSize,
  FontWeight weight = FontWeight.bold,
  TextAlign textAlign = TextAlign.justify,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: fontSize,
    ),
    textAlign: textAlign,
  );
}
