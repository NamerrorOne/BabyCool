import 'package:flutter/material.dart';
import 'package:platform_school/pages/home_page/currentLessons/current_lessons.card.dart';

class CurrentLessons extends StatelessWidget {
  const CurrentLessons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: const Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Открытые занятия',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 23,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -1)),
                  SizedBox(
                    height: 10,
                  ),
                  CurrentlessonCard(
                    cardTexts: {
                      'title': 'Развивающие занятия 2+',
                      "description1": 'Пройдено: 3',
                      'description2': 'Осталось: 26'
                    },
                    progressbarColor: Color(0xFF38B5E8),
                    progressbarProgress: 0.09,
                    progressbarSize: 60,
                    progressbarBackgroundColor:
                        Color.fromARGB(255, 161, 228, 255),
                    cardBackgroundColor: Color(0xFFEEF7F9),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CurrentlessonCard(
                    cardTexts: {
                      'title': 'Логоритмика',
                      "description1": 'Пройдено: 1',
                      'description2': 'Осталось: 10'
                    },
                    progressbarColor: Color(0xFF947A9D),
                    progressbarProgress: 0.74,
                    progressbarSize: 60,
                    progressbarBackgroundColor:
                        Color.fromARGB(255, 224, 203, 233),
                    cardBackgroundColor: Color(0xFFF3EEF9),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
