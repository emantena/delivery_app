import 'package:flutter/material.dart';

import 'package:delivery_app/src/colors/app_color.dart';
import 'package:delivery_app/src/features/presentation/widgets/header_text.dart';

class CuisineFilter extends StatefulWidget {
  const CuisineFilter({Key? key}) : super(key: key);

  @override
  _CuisineFilterState createState() => _CuisineFilterState();
}

class _CuisineFilterState extends State<CuisineFilter> {
  bool btnAmerica = false;
  bool btnAsia = false;
  bool btnSushi = false;
  bool btnPizza = false;
  bool btnDeserts = false;
  bool btnFastFood = false;
  bool btnBrazilian = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.all(15),
          child: headerText(
            text: "CUISINES",
            color: AppColor.disabledColor,
            fontSize: 17,
          ),
        ),
        Wrap(
          spacing: 20,
          children: [
            _roundedButtonCuisineFilter(() {
              setState(() => btnAmerica = !btnAmerica);
            }, "American", btnAmerica),
            _roundedButtonCuisineFilter(() {
              setState(() => btnAsia = !btnAsia);
            }, "Asia", btnAsia),
            _roundedButtonCuisineFilter(() {
              setState(() => btnBrazilian = !btnBrazilian);
            }, "Brazilian", btnBrazilian),
            _roundedButtonCuisineFilter(() {
              setState(() => btnDeserts = !btnDeserts);
            }, "Deserts", btnDeserts),
            _roundedButtonCuisineFilter(() {
              setState(() => btnFastFood = !btnFastFood);
            }, "FastFood", btnFastFood),
            _roundedButtonCuisineFilter(() {
              setState(() => btnPizza = !btnPizza);
            }, "Pizza", btnPizza),
            _roundedButtonCuisineFilter(() {
              setState(() => btnSushi = !btnSushi);
            }, "Sushi", btnSushi),
          ],
        )
      ],
    );
  }

  Widget _roundedButtonCuisineFilter(Function pressed, String label, bool isActive) {
    return ElevatedButton(
      onPressed: pressed as void Function()?,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.5),
        side: MaterialStateProperty.all(
          BorderSide(color: isActive ? AppColor.secondary : AppColor.disabledColor),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(color: isActive ? AppColor.secondary : Colors.black),
      ),
    );
  }
}
