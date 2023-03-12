import 'package:flutter/material.dart';

import 'package:delivery_app/src/features/presentation/widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/colors/app_color.dart';

class ErrorAlertView {
  static Future showErrorAlertDialog({
    required BuildContext context,
    required String subtitle,
    dynamic Function()? ctaButtonAction,
  }) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
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
                  const Image(
                    image: AssetImage('assets/errorIcon.png'),
                    width: 130,
                    height: 130,
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    child: Text(
                      'Network error',
                      style: TextStyle(
                        color: AppColor.primary,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      subtitle,
                      style: TextStyle(
                        color: AppColor.primary,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  createButton(
                    context: context,
                    labelButton: 'Ir a inicio',
                    buttonColor: AppColor.secondary,
                    shape: const StadiumBorder(),
                    func: ctaButtonAction,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
