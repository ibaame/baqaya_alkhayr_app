// ignore_for_file: unnecessary_cast,  prefer_const_literals_to_create_immutables

import 'package:baqaya_alkhayr/layouts/screens/home.dart';
import 'package:baqaya_alkhayr/layouts/screens/locations.dart';
import 'package:baqaya_alkhayr/layouts/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/my_color.dart';

int _selectedIndex = 0;
Widget bodyApp = const Home();

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  var homeColor = MyColors.theme;
  var locationsColor = MyColors.secondaryColor;
  var profileColor = MyColors.secondaryColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyApp,
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/profile.svg',
              color: profileColor,
              width: 21,
            ),
            label: 'profile',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: homeColor,
              width: 22,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/pin.svg',
              color: locationsColor,
              width: 22,
            ),
            label: 'shield',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: MyColors.theme,
        unselectedItemColor: MyColors.secondaryColor,
        onTap: (int index) {
          switch (index) {
            case 0:
              bodyApp = const Profile();
              profileColor = MyColors.theme;
              locationsColor = MyColors.secondaryColor;
              homeColor = MyColors.secondaryColor;
              break;
            case 1:
              bodyApp = const Home();
              homeColor = MyColors.theme;
              locationsColor = MyColors.secondaryColor;
              profileColor = MyColors.secondaryColor;
              break;
            case 2:
              bodyApp = const Locations();
              homeColor = MyColors.secondaryColor;
              profileColor = MyColors.secondaryColor;
              locationsColor = MyColors.theme;
              break;
          }
          setState(
            () {
              _selectedIndex = index;
            },
          );
        },
      ),
    );
  }
}
