import 'package:flutter/material.dart';

Widget roundedButton({
  required String text,
  required double fontSize,
  required Function pressed,
  required Color color,
  Image? image,
  double width = 350,
  double height = 45,
  double radiusCircular = 20,
}) {
  return Container(
    width: width,
    height: height,
    margin: const EdgeInsets.only(top: 20),
    child: ElevatedButton(
      onPressed: pressed as void Function()?,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusCircular),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image ?? const SizedBox(width: 0, height: 0),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Text(text),
          ),
        ],
      ),
    ),
  );
}
