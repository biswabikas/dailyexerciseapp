import 'package:dailyexerciseapp/widgets/bottom_nav_bar_item.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavItem(
            title: 'Today',
            svgSrc: 'assets/icons/calendar.svg',
            press: () {},
          ),
          BottomNavItem(
            title: 'All Exercises',
            svgSrc: 'assets/icons/gym.svg',
            press: () {},
            isActive: true,
          ),
          BottomNavItem(
            title: 'Settings',
            svgSrc: 'assets/icons/Settings.svg',
            press: () {},
          ),
        ],
      ),
    );
  }
}
