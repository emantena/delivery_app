import 'package:flutter/material.dart';

// Pages
import 'package:delivery_app/src/pages/forgot_password_page.dart';
import 'package:delivery_app/src/pages/login_page.dart';
import 'package:delivery_app/src/pages/welcome_page.dart';
import 'package:delivery_app/src/pages/sign-up-page.dart';
import 'package:delivery_app/src/pages/modules/tab_navigation.dart';

final appRoute = <String, WidgetBuilder>{
  "welcome": (BuildContext context) => const WelcomePage(),
  "login": (BuildContext context) => const LoginPage(),
  "forgot-password": (context) => const ForgotPasswordPage(),
  "sign-up": (context) => const SignUpPage(),
  "tabs": (context) => const TabNavigation(),
};
