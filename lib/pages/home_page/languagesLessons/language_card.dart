import 'package:flutter/material.dart';

class LanguageCard extends StatelessWidget {
  const LanguageCard(
      {required this.text,
      required this.height,
      required this.color,
      required this.assetPath});

  final color;
  final double height;
  final assetPath;
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
      height: height,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(19)),
      child: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.5,
                    fontSize: 17,
                    color: Color(0xff090A0A)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'язык',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.5,
                    fontSize: 17,
                    color: Color(0xff090A0A)),
              )
            ]),
            Text('Скоро'),
          ],
        ),
        Positioned(bottom: 0, right: 0, child: Image.asset(assetPath)),
      ]),
    );
  }
}
