import 'package:delivery_app/src/features/presentation/widgets/header_text.dart';
import 'package:delivery_app/src/features/presentation/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../colors/app_color.dart';
import '../../widgets/back_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.black,
      ),
    );
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const Image(
                image: AssetImage('assets/background_images/loginPage-bg.jpg'),
                width: double.infinity,
                height: 350,
                fit: BoxFit.cover,
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: backButton(
                  context: context,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Transform.translate(
            offset: const Offset(0, -20),
            child: Container(
              width: double.infinity,
              height: 470,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    children: [
                      headerText(
                        text: "Welcome back",
                        color: AppColor.primary,
                        fontSize: 30,
                      ),
                      Text(
                        "Login to you account",
                        style: TextStyle(
                          color: Theme.of(context).disabledColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      _emailInput(),
                      _passwordInput(),
                      roundedButton(
                        pressed: () {
                          Navigator.pushNamed(context, 'tabs');
                        },
                        text: "Login",
                        fontSize: 20,
                        color: AppColor.secondary,
                      ),
                      // _loginButton(context),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "forgot-password");
                          },
                          child: Text(
                            "Forgot your password?",
                            style: TextStyle(
                              color: AppColor.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                color: AppColor.disabledColor,
                                fontSize: 15,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'sign-up');
                              },
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                  color: AppColor.secondary,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _emailInput() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromRGBO(142, 142, 147, 1.2),
      ),
      child: const TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintText: "Email",
        ),
      ),
    );
  }

  Widget _passwordInput() {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromRGBO(142, 142, 147, 1.2),
      ),
      child: const TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintText: "Password",
        ),
      ),
    );
  }
}
