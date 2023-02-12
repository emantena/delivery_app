import 'package:flutter/material.dart';
import 'dart:ui';

import '../colors/app_color.dart';

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
                child: Text(
                  "delivered fast food to your door".toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
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
              SizedBox(
                width: 350,
                height: 45,
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
                  child: const Text('Login'),
                ),
              ),
              Container(
                width: 350,
                height: 45,
                margin: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppColor.blue),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        image: AssetImage('assets/icons/facebook.png'),
                        width: 18,
                        height: 18,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text('Connect with Facebook'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
