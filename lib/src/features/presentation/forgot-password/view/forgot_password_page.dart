import 'package:flutter/material.dart';

import 'package:delivery_app/src/colors/app_color.dart';
import 'package:delivery_app/src/features/presentation/widgets/Alerts/alert_dialog.dart';
import 'package:delivery_app/src/features/presentation/widgets/BackButtons/back_button.dart';
import 'package:delivery_app/src/features/presentation/widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/widgets/Headers/header_text.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return backButton(context: context, color: Colors.black);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(30),
                  child: headerText(
                    text: "Forgot password",
                    color: AppColor.primary,
                    fontSize: 38,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: const Text(
                    "Please enter your email address. You will receive a link to create a new password via email",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                ),
                _emailText(),
                _sendButton(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _emailText() {
    return Container(
      width: 380,
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromRGBO(142, 142, 147, 1.2),
      ),
      child: const TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: "Your email here",
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _sendButton(BuildContext context) {
    return Container(
      width: 350,
      height: 45,
      margin: const EdgeInsets.only(top: 30),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Theme.of(context).colorScheme.secondary,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        onPressed: () {
          showAlertDialog(
            context: context,
            imagePath: const AssetImage('assets/icons/lock.png'),
            headerTitle: "Your password has been reset",
            headerSubTitle: "You'll shortly receive an email with a code to setup a new password",
            doneButton: createButton(
              context: context,
              labelButton: 'Done',
              buttonColor: AppColor.orange,
              func: () {
                Navigator.pushNamed(context, 'login');
              },
            ),
          );
        },
        child: const Text(
          'Send',
          style: TextStyle(
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
