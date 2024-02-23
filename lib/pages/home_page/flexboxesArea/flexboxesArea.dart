import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlexboxesArea extends StatelessWidget {
  const FlexboxesArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: SizedBox(
        width: double.infinity,
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 115,
            decoration: BoxDecoration(
                color: const Color(0xFFB0E6FC),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Развивающие',
                            style: TextStyle(
                                color: Color(0xFF090A0A),
                                fontSize: 18,
                                fontWeight: FontWeight.w700)),
                        Text('занятия',
                            style: TextStyle(
                                color: Color(0xFF090A0A),
                                fontSize: 18,
                                fontWeight: FontWeight.w600))
                      ],
                    ),
                    Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 24,
                          child: SvgPicture.asset(
                            'assets/homepage/flexboxesimages/levelup_background.svg',
                            height: 90,
                          ),
                        ),
                        Positioned(
                          child: Image.asset(
                            'assets/homepage/flexboxesimages/levelup.png',
                            height: 100,
                          ),
                        )
                      ],
                    )
                  ]),
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        width: 157,
                        height: 182,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFFFCBDAD)),
                        child: Stack(children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Онлайн',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF090A0A))),
                              Text('творчество',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF090A0A))),
                            ],
                          ),
                          Positioned(
                            bottom: 0,
                            right: 10,
                            child: SvgPicture.asset(
                                'assets/homepage/flexboxesimages/creation_background_eclipse.svg'),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 10,
                            child: Image.asset(
                                'assets/homepage/flexboxesimages/creation.png'),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                        width: 157,
                        height: 280,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFFDAC0E3)),
                        child: Stack(
                          children: [
                            const Text('Логоритмика',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF090A0A))),
                            Positioned(
                                bottom: 0,
                                right: 10,
                                child: SvgPicture.asset(
                                    'assets/homepage/flexboxesimages/logoritmika.svg')),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFFBDEFC3)),
                        height: 280,
                        width: 157,
                        child: Stack(
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Нейроигры',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF090A0A))),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Cкоро'),
                              ],
                            ),
                            Positioned(
                                bottom: 16,
                                right: 10,
                                child: SvgPicture.asset(
                                    'assets/homepage/flexboxesimages/neuro_background_eclipse.svg')),
                            Positioned(
                                bottom: -5,
                                left: 5,
                                child: Image.asset(
                                    'assets/homepage/flexboxesimages/neuro.png')),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFFC9D7FD)),
                        height: 182,
                        width: 157,
                        child: Stack(
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Сказки на ночь',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF090A0A))),
                              ],
                            ),
                            Positioned(
                                bottom: 10,
                                right: 15,
                                child: SvgPicture.asset(
                                    'assets/homepage/flexboxesimages/sleep_background.svg')),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Image.asset(
                                    'assets/homepage/flexboxesimages/sleep.png')),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ]),
      ),
    );
  }
}
