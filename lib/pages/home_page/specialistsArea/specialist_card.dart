import 'package:flutter/material.dart';

class SpecialistCard extends StatefulWidget {
  SpecialistCard(
      {super.key,
      required this.name,
      required this.surname,
      required this.path});
  final name;
  String surname;
  final path;

  @override
  State<SpecialistCard> createState() => _SpecialistCardState();
}

class _SpecialistCardState extends State<SpecialistCard> {
  void validateSurname(surnameValue) {
    if (surnameValue.toString().length > 7) {
      String resultValue = (surnameValue.toString().substring(0, 7)) + '..';
      widget.surname = resultValue;
    }
  }

  @override
  void initState() {
    validateSurname(widget.surname);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      width: 70,
      height: 110,
      decoration: BoxDecoration(
          color: Color(0xFFF5F5F5), borderRadius: BorderRadius.circular(24)),
      child: Column(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Image.asset(widget.path, height: 50)),
        SizedBox(
          height: 5,
        ),
        Text(
          widget.name,
          style: TextStyle(fontSize: 10),
        ),
        Text(
          widget.surname,
          style: TextStyle(fontSize: 10),
        ),
      ]),
    );
  }
}
