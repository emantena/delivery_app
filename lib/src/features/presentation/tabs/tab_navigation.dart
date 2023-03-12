import 'package:flutter/material.dart';

import 'package:delivery_app/src/features/presentation/widgets/Alerts/alert_dialog.dart';
import 'package:delivery_app/src/features/presentation/widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/tabs/explore/view/explore_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs/favorite/favorite_page.dart';
import 'package:delivery_app/src/features/presentation/tabs/order/order_page.dart';
import 'package:delivery_app/src/features/presentation/tabs/profile/profile_page.dart';

import 'package:delivery_app/src/colors/app_color.dart';

class TabNavigation extends StatefulWidget {
  const TabNavigation({Key? key}) : super(key: key);

  @override
  TabNavigationState createState() => TabNavigationState();
}

class TabNavigationState extends State<TabNavigation> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _getLocation(context);
    });
  }

  final List<Widget> _pageItems = [
    const ExploreTab(),
    const OrderPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];

  int _selectedItem = 0;

  void _changeTab(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageItems.elementAt(_selectedItem),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      iconSize: 30,
      selectedItemColor: AppColor.secondary,
      unselectedItemColor: AppColor.disabledColor,
      currentIndex: _selectedItem,
      onTap: _changeTab,
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.explore,
          ),
          label: "Explore",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: "My Order",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: "Favourite",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin),
          label: "Profile",
        ),
      ],
    );
  }

  Future _getLocation(BuildContext context) async {
    showAlertDialog(
      context: context,
      imagePath: const AssetImage("assets/icons/location.png"),
      headerTitle: "Enable Your Location",
      headerSubTitle: "Please allow to use your location to show nearby restaurant on the map",
      doneButton: createButton(
        context: context,
        labelButton: 'Done',
        buttonColor: AppColor.orange,
        func: () {},
      ),
    );
  }
}
