import 'package:flutter/material.dart';

// Pages
import '../pages/forgot_password_page.dart';
import '../pages/login_page.dart';
import '../pages/welcome_page.dart';

final appRoute = <String, WidgetBuilder>{
  "welcome": (BuildContext context) => const WelcomePage(),
  "login": (BuildContext context) => const LoginPage(),
  "forgot-password": (context) => const ForgotPasswordPage(),
};
