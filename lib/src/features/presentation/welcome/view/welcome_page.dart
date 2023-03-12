import 'package:delivery_app/src/features/presentation/widgets/Buttons/rounded_button.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:delivery_app/src/colors/app_color.dart';
import 'package:delivery_app/src/features/presentation/widgets/Headers/header_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/background_images/welcomePage-bg.jpeg'),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Container(color: Colors.black.withOpacity(0.3)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: headerText(
                  text: "DELIVERED FAST FOOD TO YOUR DOOR",
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 30,
                ),
                child: const Text(
                  "set exactaly location to find right restaurant near you",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ),
              createButton(
                context: context,
                func: () {
                  Navigator.pushNamed(context, 'login');
                },
                labelButton: "Login",
                labelFontSize: 17,
                buttonColor: AppColor.secondary,
              ),
              createButton(
                context: context,
                func: () {
                  Navigator.pushNamed(context, 'login');
                },
                labelButton: "Connect with Facebook",
                labelFontSize: 17,
                buttonColor: AppColor.fbButtonColor,
                isWithIcon: true,
                icon: const AssetImage('assets/icons/facebook.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
