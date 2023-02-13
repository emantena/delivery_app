import 'package:flutter/material.dart';
import 'package:delivery_app/src/colors/app_color.dart';
import 'package:delivery_app/src/pages/modules/explore/explore_page.dart';
import 'package:delivery_app/src/pages/modules/favorite/favorite_page.dart';
import 'package:delivery_app/src/pages/modules/order/order_page.dart';
import 'package:delivery_app/src/pages/modules/profile/profile_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  final List<Widget> _pageItems = [
    ExplorePage(),
    OrderPage(),
    FavoritePage(),
    ProfilePage(),
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
}
