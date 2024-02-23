import 'package:flutter/material.dart';
import 'package:platform_school/pages/home_page/languagesLessons/language_card.dart';

class LanguagesLessons extends StatelessWidget {
  const LanguagesLessons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 50, 20, 0),
      child:
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Изучение языков',
          style: TextStyle(
              color: Color(0xFF090A0A),
              fontSize: 24,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: LanguageCard(
                assetPath: 'assets/homepage/languageimages/eng.png',
                height: 200,
                text: 'Английский',
                color: Color(0xFFFDC9DF),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 1,
              child: LanguageCard(
                text: 'Французский',
                assetPath: 'assets/homepage/languageimages/france.png',
                height: 200,
                color: Color(0xFF9ADAF4),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
