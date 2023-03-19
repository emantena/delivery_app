import 'package:delivery_app/src/features/presentation/filter/view/widget/price_filter.dart';
import 'package:flutter/material.dart';

import 'package:delivery_app/src/features/presentation/filter/view/widget/cuisines_filters.dart';
import 'package:delivery_app/src/colors/app_color.dart';
import 'package:delivery_app/src/features/presentation/widgets/Headers/header_text.dart';

import 'widget/list_tile_checked.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  FilterPageState createState() => FilterPageState();
}

class FilterPageState extends State<FilterPage> {
  // SORT BY BOOLEANS
  bool topRated = false;
  bool nearMe = false;
  bool costHighToLow = false;
  bool costLowToHigh = false;
  bool mostPopular = false;

  // FILTER BOOLEANS
  bool openNow = false;
  bool creditCards = false;
  bool alcoholServed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
                  child: headerText(
                    text: 'CUISINES',
                    color: AppColor.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: const CuisinesFilter(),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
                  child: headerText(
                    text: 'SORT BY',
                    color: AppColor.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0,
                  ),
                ),
                _sortByContainer(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
                  child: headerText(
                    text: 'FILTER',
                    color: AppColor.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0,
                  ),
                ),
                _filterContainer(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
                  child: headerText(
                    text: 'PRICE',
                    color: AppColor.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0,
                  ),
                ),
                const PriceFilter()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _sortByContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          ListTileCheck(
            texto: 'Top Rated',
            isActive: topRated,
            func: () {
              setState(() => topRated = !topRated);
            },
          ),
          ListTileCheck(
            texto: 'Nearest Me',
            isActive: nearMe,
            func: () {
              setState(() => nearMe = !nearMe);
            },
          ),
          ListTileCheck(
            texto: 'Cost High to Low',
            isActive: costHighToLow,
            func: () {
              setState(() => costHighToLow = !costHighToLow);
            },
          ),
          ListTileCheck(
            texto: 'Cost Low to High',
            isActive: costLowToHigh,
            func: () {
              setState(() => costLowToHigh = !costLowToHigh);
            },
          ),
          ListTileCheck(
            texto: 'Most Popular',
            isActive: mostPopular,
            func: () {
              setState(() => mostPopular = !mostPopular);
            },
          ),
        ],
      ),
    );
  }

  Widget _filterContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          ListTileCheck(
            texto: 'Open Now',
            isActive: openNow,
            func: () {
              setState(() => openNow = !openNow);
            },
          ),
          ListTileCheck(
            texto: 'Creadits Cards',
            isActive: creditCards,
            func: () {
              setState(() => creditCards = !creditCards);
            },
          ),
          ListTileCheck(
            texto: 'Alcohol Served',
            isActive: alcoholServed,
            func: () {
              setState(() => alcoholServed = !alcoholServed);
            },
          ),
        ],
      ),
    );
  }
}

PreferredSizeWidget? _appBar(BuildContext context) {
  return AppBar(
    elevation: 0.5,
    backgroundColor: Colors.white,
    title: headerText(
      text: 'Filters',
      fontWeight: FontWeight.w600,
      fontSize: 17.0,
    ),
    leading: Container(
      padding: const EdgeInsets.only(top: 20, left: 7.0),
      child: headerText(
        text: 'Reset',
        fontWeight: FontWeight.w500,
        fontSize: 17.0,
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: const EdgeInsets.only(top: 20, right: 10.0),
          child: headerText(
            text: 'Done',
            color: AppColor.orange,
            fontWeight: FontWeight.w500,
            fontSize: 17.0,
          ),
        ),
      )
    ],
  );
}
