import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:platform_school/pages/home_page/specialistsArea/specialist_card.dart';

class SpecialistsArea extends StatelessWidget {
  const SpecialistsArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(27, 40, 27, 0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Наши специалисты',
              style: TextStyle(
                  letterSpacing: -0.5,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            IconButton(
                onPressed: () => {},
                icon: const Icon(
                    color: Color(0xFFC5C5C7),
                    size: 18,
                    Icons.arrow_forward_ios))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SpecialistCard(
                path: 'assets/homepage/specialists/specialist_girl_pink.png',
                name: 'Ольга',
                surname: 'Субботина'),
            SpecialistCard(
                path: 'assets/homepage/specialists/man_specialist.png',
                name: 'Александр',
                surname: 'Спиваков'),
            SpecialistCard(
                path: 'assets/homepage/specialists/yellow_girl_specialist.png',
                name: 'Елена',
                surname: 'Хвойная'),
            SpecialistCard(
                path: 'assets/homepage/specialists/black_girl_specialist.png',
                name: 'Ангелина',
                surname: 'Кривошеина'),
          ],
        ),
        GestureDetector(
          onTap: () => {print('Test tap')},
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            height: 66,
            decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(15)),
            child: Stack(
              alignment: Alignment.center,
              children: [
                const Positioned(
                  left: 0,
                  child: Text('О нас',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w700)),
                ),
                Positioned(
                    left: 120,
                    child: SvgPicture.asset(
                        'assets/homepage/specialists/arrows.svg')),
                Positioned(
                    right: 0,
                    child:
                        Image.asset('assets/homepage/specialists/letters.png'))
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Text('Поделиться',
            style: TextStyle(
                letterSpacing: -0.5,
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w700)),
        const SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            print('рассказать друзьям');
          },
          child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF64D0FC)),
              child: const Text('Рассказать друзьям',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.5))),
        ),
        const SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: () {
            print('Поделиться в соцсетях');
          },
          child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFFC0CBD9)),
              child: const Text('Поделиться в соцсетях',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.5))),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: GestureDetector(
              onTap: () {
                print('Написать в тех поддержку');
              },
              child: const Text('Написать в тех. поддержку',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.5)),
            )),
      ]),
    );
  }
}
