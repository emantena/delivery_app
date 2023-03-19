import 'package:delivery_app/src/colors/app_color.dart';
import 'package:delivery_app/src/features/presentation/widgets/Buttons/rounded_button.dart';
import 'package:flutter/material.dart';

class CuisinesFilter extends StatefulWidget {
  const CuisinesFilter({Key? key}) : super(key: key);

  @override
  CuisinesFilterState createState() => CuisinesFilterState();
}

class CuisinesFilterState extends State<CuisinesFilter> {
  bool btnAmerican = false;
  bool btnAsia = false;
  bool btnSushi = false;
  bool btnPizza = false;

  bool btnDesserts = false;
  bool btnFastFood = false;
  bool btnVietnamese = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.start,
          children: [
            _createButtonFilter(() {
              setState(() => btnAmerican = !btnAmerican);
            }, btnAmerican, 'American', context),
            _createButtonFilter(() {
              setState(() => btnAsia = !btnAsia);
            }, btnAsia, 'Asia', context),
            _createButtonFilter(() {
              setState(() => btnSushi = !btnSushi);
            }, btnSushi, 'Shushi', context),
            _createButtonFilter(() {
              setState(() => btnPizza = !btnPizza);
            }, btnPizza, 'Pizza', context),
            _createButtonFilter(() {
              setState(() => btnDesserts = !btnDesserts);
            }, btnDesserts, 'Desserts', context),
            _createButtonFilter(() {
              setState(() => btnFastFood = !btnFastFood);
            }, btnFastFood, 'Fast Food', context),
            _createButtonFilter(() {
              setState(() => btnVietnamese = !btnVietnamese);
            }, btnVietnamese, 'Vietnam', context)
          ],
        )
      ],
    );
  }
}

Widget _createButtonFilter(
  Function()? func,
  bool? isActive,
  String? labelText,
  BuildContext context,
) {
  return Container(
    width: 120,
    height: 50,
    margin: const EdgeInsets.only(left: 5),
    child: createButton(
      context: context,
      labelButton: labelText ?? "",
      labelButtonColor: isActive ?? true ? AppColor.orange : AppColor.grey,
      func: func,
      buttonColor: AppColor.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(
          color: isActive ?? true ? AppColor.orange : AppColor.grey,
        ),
      ),
    ),
  );
}
