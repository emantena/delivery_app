import 'package:flutter/material.dart';
import 'package:delivery_app/src/features/presentation/widgets/header_text.dart';

import '../../../../colors/app_color.dart';
import '../../widgets/back_button.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

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
          _showAlert(context);
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

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: ((BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: SizedBox(
            height: 350,
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/icons/lock.png'),
                  width: 130,
                  height: 130,
                ),
                const SizedBox(
                  height: 20,
                ),
                headerText(
                  text: "Your password has been reset",
                  fontSize: 20,
                  color: AppColor.primary,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "You'll shortly receive an email with a code to setup a new password",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                _doneButton(context),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget _doneButton(BuildContext context) {
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
          Navigator.pushNamed(context, 'login');
        },
        child: const Text(
          'Done',
          style: TextStyle(
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
