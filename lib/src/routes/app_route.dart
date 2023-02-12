import 'package:flutter/material.dart';
// Pages
import '../pages/login_page.dart';
import '../pages/welcome_page.dart';

final appRoute = <String, WidgetBuilder>{
  "welcome": (BuildContext context) => const WelcomePage(),
  "login": (BuildContext context) => const LoginPage(),
};
