import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationIcon extends StatefulWidget {
  BottomNavigationIcon(
      {super.key,
      required this.path,
      required this.description,
      required this.isActive});

  String path;
  String description;
  bool isActive;

  @override
  State<BottomNavigationIcon> createState() => _BottomNavigationIconState();
}

class _BottomNavigationIconState extends State<BottomNavigationIcon> {
  void _toggleActivate() {
    widget.isActive = !widget.isActive;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Color color;
    widget.isActive ? color = Colors.black : color = Colors.grey;
    return Container(
      child: Column(children: [
        GestureDetector(
            onTap: _toggleActivate,
            child: SvgPicture.asset(widget.path, height: 25, color: color)),
        Text(widget.description,
            style: TextStyle(
                fontSize: 12, color: color, fontWeight: FontWeight.w600)),
      ]),
    );
  }
}
