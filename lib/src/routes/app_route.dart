import 'package:flutter/material.dart';

// Pages
import 'package:delivery_app/src/features/presentation/forgot-password/view/forgot_password_page.dart';
import 'package:delivery_app/src/features/presentation/login/view/login_page.dart';
import 'package:delivery_app/src/features/presentation/welcome/view/welcome_page.dart';
import 'package:delivery_app/src/features/presentation/sign-up/view/sign_up_page.dart';
import 'package:delivery_app/src/features/presentation/search/view/search_page.dart';
import 'package:delivery_app/src/features/presentation/tabs/tab_navigation.dart';
import 'package:delivery_app/src/features/presentation/collection/view/collection_page.dart';
import 'package:delivery_app/src/features/presentation/collection-detail/view/collection_detail_page.dart';
import 'package:delivery_app/src/features/presentation/filter/view/filter_page.dart';

final appRoute = <String, WidgetBuilder>{
  "welcome": (BuildContext context) => const WelcomePage(),
  "login": (BuildContext context) => const LoginPage(),
  "forgot-password": (context) => const ForgotPasswordPage(),
  "sign-up": (context) => const SignUpPage(),
  "search": (context) => const SearchPage(),
  "filter": (context) => const FilterPage(),
  "collection": (context) => const CollectionsPage(),
  "collection-detail": (context) => const CollectionDetailPage(),
  "tabs": (context) => const TabNavigation(),
};
