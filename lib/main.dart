// @dart=2.9
import 'package:delivery_app/src/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Color
import 'src/colors/app_color.dart';

// Routes

void main() {
  runApp(const DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.black,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: appRoute,
      initialRoute: "welcome",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppColor.primary,
          secondary: AppColor.secondary,
        ),
        primaryColor: AppColor.primary,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColor.blue),
          ),
        ),
        disabledColor: AppColor.disabledColor,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
    );
  }
}
