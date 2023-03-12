import 'package:flutter/material.dart';
//Common Widgets
import 'header_text.dart';
// Colors
import 'package:delivery_app/src/colors/app_color.dart';

Widget headerDoubleText({
  required String textHeader,
  required String textAction,
  Function()? func,
}) {
  return Row(
    children: [
      headerText(text: textHeader, fontSize: 20.0),
      const Spacer(),
      GestureDetector(
        onTap: func,
        child: headerText(
          text: textAction,
          color: AppColor.orange,
          fontWeight: FontWeight.w500,
          fontSize: 15.0,
        ),
      ),
    ],
  );
}
