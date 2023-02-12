import 'package:delivery_app/src/routes/app_route.dart';
import 'package:flutter/material.dart';

// Color
import 'src/colors/app_color.dart';

// Routes

void main() {
  runApp(const DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
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
