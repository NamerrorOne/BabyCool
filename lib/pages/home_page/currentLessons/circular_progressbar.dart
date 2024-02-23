import 'package:flutter/material.dart';

class CircularProgressBar extends StatelessWidget {
  final double progress;
  final double size;
  final Color color;
  final Color backgroundColor;

  const CircularProgressBar(
      {required this.progress,
      required this.size,
      required this.color,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Stack(
        children: [
          Center(
            child: SizedBox(
              width: size,
              height: size,
              child: CircularProgressIndicator(
                value: progress,
                strokeWidth: 7,
                valueColor: AlwaysStoppedAnimation<Color>(color),
                backgroundColor: backgroundColor,
              ),
            ),
          ),
          Center(
            child: Text(
              '${(progress * 100).toInt()}%',
              style: TextStyle(fontSize: size / 4, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
