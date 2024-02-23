import 'package:flutter/material.dart';
import 'package:platform_school/pages/home_page/bottomNavigation/bottom_navigation.dart';
import 'package:platform_school/pages/home_page/currentLessons/current_lessons_page.dart';
import 'package:platform_school/pages/home_page/flexboxesArea/flexboxesArea.dart';
import 'package:platform_school/pages/home_page/languagesLessons/languages_lessons.dart';
import 'package:platform_school/pages/home_page/specialistsArea/speacialists_area.dart';
import 'package:platform_school/pages/home_page/topContainer/home_page.appBarContainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopContainer(),
            CurrentLessons(),
            FlexboxesArea(),
            LanguagesLessons(),
            SpecialistsArea(),
          ],
        ),
      ),
    );
  }
}
