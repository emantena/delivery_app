import 'package:delivery_app/src/colors/app_color.dart';
import 'package:flutter/material.dart';

Widget button({
  required String text,
  required double fontSize,
  required Function pressed,
}) {
  return ElevatedButton(
    onPressed: pressed as void Function()?,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        AppColor.secondary,
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
    child: Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
      ),
    ),
  );
}
