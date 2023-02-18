import 'package:flutter/material.dart';

Widget headerText({
  required String text,
  required Color color,
  required double fontSize,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
    ),
  );
}
