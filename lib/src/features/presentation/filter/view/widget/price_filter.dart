import 'package:flutter/material.dart';
// Colors
import 'package:delivery_app/src/colors/app_color.dart';

class PriceFilter extends StatefulWidget {
  const PriceFilter({super.key});

  @override
  PriceFilterState createState() => PriceFilterState();
}

class PriceFilterState extends State<PriceFilter> {
  // Properties
  RangeValues _values = const RangeValues(0.3, 1.0);
  int _minPrize = 0;
  int _maxPrize = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('$_minPrize €', style: const TextStyle(fontSize: 16)),
        SizedBox(
          width: 300,
          child: RangeSlider(
            activeColor: AppColor.orange,
            inactiveColor: AppColor.grey,
            values: _values,
            min: 0,
            max: 200.0,
            onChanged: (RangeValues newValues) {
              setState(() {
                _values = newValues;
                _minPrize = _values.start.round();
                _maxPrize = _values.end.round();
              });
            },
          ),
        ),
        Text(
          '$_maxPrize €',
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
