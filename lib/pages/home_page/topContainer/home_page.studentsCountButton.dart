import 'package:flutter/material.dart';

class StudentsButton extends StatelessWidget {
  const StudentsButton(
      {super.key, required this.studentsCount, required this.isUser});

  final String studentsCount;
  final bool isUser;

  @override
  Widget build(BuildContext context) {
    final containerHeight = isUser ? 150.0 : 105.0;
    return Container(
      height: containerHeight,
      width: 352,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25), // Цвет тени
          blurRadius: 3.84, // Радиус размытия
          spreadRadius: 3.84, // Распространение тени
          offset: const Offset(0, 3.84), // Смещение тени по X и Y
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(15.36)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              studentsCount,
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87),
            ),
            const Text(
              'Ребят занимаются с нами',
              style:
                  TextStyle(fontSize: 15, color: Color.fromARGB(185, 0, 0, 0)),
            ),
            const SizedBox(
              height: 5,
            ),
            isUser
                ? Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.77,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xFF39B6E9),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Text('Присоединиться',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700)),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
