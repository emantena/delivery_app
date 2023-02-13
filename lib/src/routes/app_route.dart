import 'package:flutter/material.dart';

// Pages
import 'package:delivery_app/src/features/presentation/forgot-password/view/forgot_password_page.dart';
import 'package:delivery_app/src/features/presentation/login/view/login_page.dart';
import 'package:delivery_app/src/features/presentation/welcome/view/welcome_page.dart';
import 'package:delivery_app/src/features/presentation/sign-up/view/sign-up-page.dart';
import 'package:delivery_app/src/features/presentation/tabs/tab_navigation.dart';

final appRoute = <String, WidgetBuilder>{
  "welcome": (BuildContext context) => const WelcomePage(),
  "login": (BuildContext context) => const LoginPage(),
  "forgot-password": (context) => const ForgotPasswordPage(),
  "sign-up": (context) => const SignUpPage(),
  "tabs": (context) => const TabNavigation(),
};
