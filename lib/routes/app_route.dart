import 'package:flutter/material.dart';

// Pages
import '../pages/welcome_page.dart';

final appRoute = <String, WidgetBuilder>{
  "welcome": (BuildContext context) => const WelcomePage(),
};
