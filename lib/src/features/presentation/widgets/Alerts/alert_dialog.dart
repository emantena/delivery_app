import 'package:flutter/material.dart';
import '../Headers/header_text.dart';

//Colors
import 'package:delivery_app/src/colors/app_color.dart';

Future showAlertDialog({
  required BuildContext context,
  required ImageProvider<Object> imagePath,
  required String headerTitle,
  required String headerSubTitle,
  required Widget doneButton,
}) async {
  await showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        content: SizedBox(
          height: 320,
          child: Column(
            children: [
              Image(
                image: imagePath,
                width: 130,
                height: 130,
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                child: headerText(
                  text: headerTitle,
                  color: AppColor.primary,
                  fontSize: 20.0,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Text(
                  headerSubTitle,
                  style: TextStyle(
                    color: AppColor.primary,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                  ),
                ),
              ),
              doneButton,
            ],
          ),
        ),
      );
    },
  );
}
