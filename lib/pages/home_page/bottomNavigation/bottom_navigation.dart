import 'package:flutter/material.dart';
import 'package:platform_school/pages/home_page/bottomNavigation/bottom_navigation_icon.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 66,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          BottomNavigationIcon(
            path: 'assets/homepage/bottomNavigationBar/homeicon.svg',
            description: 'Главный',
            isActive: true,
          ),
          BottomNavigationIcon(
            path: 'assets/homepage/bottomNavigationBar/blocksicon.svg',
            description: 'Мои занятия',
            isActive: false,
          ),
          BottomNavigationIcon(
            path: 'assets/homepage/bottomNavigationBar/usericon.svg',
            description: 'Профиль',
            isActive: false,
          )
        ]),
      ),
    );
  }
}
