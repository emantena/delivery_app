import 'package:flutter/material.dart';

import 'package:delivery_app/src/features/presentation/widgets/header_text.dart';
import 'package:delivery_app/src/colors/app_color.dart';

class Price extends StatefulWidget {
  const Price({Key? key}) : super(key: key);

  @override
  PriceState createState() => PriceState();
}

class PriceState extends State<Price> {
  RangeValues _values = const RangeValues(50, 100);
  int _minPrice = 50;
  int _maxPrice = 100;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.all(15),
          child: headerText(
            text: "PRICE",
            color: AppColor.disabledColor,
            fontSize: 17,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Text('US\$ $_minPrice', style: const TextStyle(fontSize: 17)),
                  SizedBox(
                    width: 260,
                    child: RangeSlider(
                      activeColor: AppColor.secondary,
                      inactiveColor: AppColor.disabledColor,
                      values: _values,
                      min: 0,
                      max: 200,
                      // divisions: 5,
                      labels: RangeLabels(
                        _values.start.round().toString(),
                        _values.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          _values = values;
                          _minPrice = _values.start.round();
                          _maxPrice = _values.end.round();
                        });
                      },
                    ),
                  ),
                  // child: RangeSlider(
                  //   activeColor: AppColor.secondary,
                  //   inactiveColor: AppColor.disabledColor,
                  //   values: _values,
                  // min: 0,
                  // max: 200,
                  // onChanged: (RangeValues newValues) {
                  // setState(() {
                  //   _values = newValues;
                  //   _maxPrice = newValues.end.round();
                  //   _minPrice = newValues.start.round();
                  // });
                  //     },
                  //   ),
                  // ),
                  Text('US\$ $_maxPrice', style: const TextStyle(fontSize: 17)),
                ],
              ),
              // Slider(value: value, onChanged: onChanged)
            ],
          ),
        ),
      ],
    );
  }
}
