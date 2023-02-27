import 'package:flutter/material.dart';

import 'package:delivery_app/src/colors/app_color.dart';
import 'package:delivery_app/src/features/presentation/widgets/header_text.dart';

import 'package:delivery_app/src/features/presentation/filter/view/widget/cuisine_filter.dart';
import 'package:delivery_app/src/features/presentation/filter/view/widget/ordered_by.dart';
import 'package:delivery_app/src/features/presentation/filter/view/widget/price.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => FilterPageState();
}

class FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                const CuisineFilter(),
                const OrderedBy(),
                const Price(),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(240, 255, 255, 255),
      elevation: 0.5,
      centerTitle: true,
      title: headerText(
        text: "Filters",
        color: AppColor.primary,
        fontSize: 20,
      ),
      leading: Container(
        padding: const EdgeInsets.only(top: 20, left: 7),
        child: headerText(
          text: "Reset",
          color: AppColor.primary,
          fontSize: 17,
        ),
      ),
      actions: [
        Container(
          padding: const EdgeInsets.only(top: 20, right: 7),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context, "tabs");
            },
            child: headerText(
              text: "Done",
              color: AppColor.secondary,
              fontSize: 17,
            ),
          ),
        )
      ],
    );
  }
}
