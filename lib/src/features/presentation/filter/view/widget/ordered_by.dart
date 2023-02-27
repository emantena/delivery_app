import 'package:flutter/material.dart';

import 'package:delivery_app/src/features/presentation/widgets/header_text.dart';
import 'package:delivery_app/src/colors/app_color.dart';

class OrderedBy extends StatefulWidget {
  const OrderedBy({Key? key}) : super(key: key);

  @override
  _OrderedByState createState() => _OrderedByState();
}

class _OrderedByState extends State<OrderedBy> {
  // Order by
  bool topRated = false;
  bool nearMe = false;
  bool costLowToHigh = false;
  bool costHighToLow = false;
  bool mostPopular = false;

  //Filter
  bool openNow = false;
  bool creditCard = false;
  bool alcoholServed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.all(15),
          child: headerText(
            text: "SORT BY",
            color: AppColor.disabledColor,
            fontSize: 17,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              _tile(
                context: context,
                title: "Top Rated",
                isActive: topRated,
                tap: () => setState(() => topRated = !topRated),
              ),
              _tile(
                context: context,
                title: "Near Me",
                isActive: nearMe,
                tap: () => setState(() => nearMe = !nearMe),
              ),
              _tile(
                context: context,
                title: "Cost Low To High",
                isActive: costLowToHigh,
                tap: () => setState(() => costLowToHigh = !costLowToHigh),
              ),
              _tile(
                context: context,
                title: "Cost High To Low",
                isActive: costHighToLow,
                tap: () => setState(() => costHighToLow = !costHighToLow),
              ),
              _tile(
                context: context,
                title: "Most Popular",
                isActive: mostPopular,
                tap: () => setState(() => mostPopular = !mostPopular),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.fromLTRB(15, 30, 15, 15),
          child: headerText(
            text: "FILTER",
            color: AppColor.disabledColor,
            fontSize: 17,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              _tile(
                context: context,
                title: "Open Now",
                isActive: openNow,
                tap: () => setState(() => openNow = !openNow),
              ),
              _tile(
                context: context,
                title: "Credit Card",
                isActive: creditCard,
                tap: () => setState(() => creditCard = !creditCard),
              ),
              _tile(
                context: context,
                title: "Alcohol Served",
                isActive: alcoholServed,
                tap: () => setState(() => alcoholServed = !alcoholServed),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _tile({
    required BuildContext context,
    required String title,
    required bool isActive,
    required Function tap,
  }) {
    return Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).dividerColor,
            ),
          ),
        ),
        child: ListTile(
          onTap: tap as void Function()?,
          title: headerText(
            text: title,
            color: isActive ? AppColor.secondary : AppColor.disabledColor,
            fontSize: 17,
          ),
          trailing: Icon(
            Icons.check,
            color: isActive ? AppColor.secondary : AppColor.disabledColor,
          ),
        ));
  }
}
