import 'package:flutter/material.dart';

import '../../../../colors/app_color.dart';
import '../../widgets/back_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
                  child: Text(
                    "Create an account",
                    style: TextStyle(
                      color: AppColor.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 38,
                    ),
                  ),
                ),
                _userNameTextField(),
                _emailTextField(),
                _phoneNumberTextField(),
                _birthDayTextField(),
                _passwordTextField(),
                _signUpButton(context),
                Container(
                  padding: const EdgeInsets.all(20),
                  // margin: const EdgeInsets.only(top: 20),
                  child: Text(
                    "By clicking Sign up you agree to the following Terms and Condictions",
                    style: TextStyle(
                      color: AppColor.primary,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _userNameTextField() {
    return Container(
      width: 380,
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromRGBO(142, 142, 147, 1.2),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: "name",
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _emailTextField() {
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
          hintText: "email",
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _phoneNumberTextField() {
    return Container(
      width: 380,
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromRGBO(142, 142, 147, 1.2),
      ),
      child: const TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: "phone number",
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _birthDayTextField() {
    return Container(
      width: 380,
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromRGBO(142, 142, 147, 1.2),
      ),
      child: const TextField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          hintText: "birthday",
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _passwordTextField() {
    return Container(
      width: 380,
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromRGBO(142, 142, 147, 1.2),
      ),
      child: const TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "password",
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _signUpButton(BuildContext context) {
    return Container(
      width: 350,
      height: 60,
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
        onPressed: () {},
        child: const Text(
          'Sign Up',
          style: TextStyle(
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
