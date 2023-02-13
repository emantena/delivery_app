import 'package:flutter/material.dart';

Widget backButton({required BuildContext context, required Color color}) {
  return IconButton(
    onPressed: () {
      Navigator.pop(context);
    },
    icon: const Icon(Icons.arrow_back),
    color: color,
    iconSize: 28,
  );
}
