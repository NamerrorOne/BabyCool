import 'package:flutter/material.dart';
import 'package:platform_school/pages/home_page/currentLessons/circular_progressbar.dart';

class CurrentlessonCard extends StatefulWidget {
  const CurrentlessonCard(
      {super.key,
      required this.progressbarSize,
      required this.progressbarColor,
      required this.progressbarProgress,
      required this.progressbarBackgroundColor,
      required this.cardBackgroundColor,
      required this.cardTexts});
  final double progressbarSize;
  final double progressbarProgress;
  final Color progressbarColor;
  final Color progressbarBackgroundColor;
  final Color cardBackgroundColor;
  final cardTexts;
  @override
  State<CurrentlessonCard> createState() => CurrentlessonCardState();
}

class CurrentlessonCardState extends State<CurrentlessonCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 10, 10, 10),
      width: double.infinity,
      height: 105,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: widget.cardBackgroundColor,
      ),
      child: Row(
        children: [
          CircularProgressBar(
            color: widget.progressbarColor,
            progress: widget.progressbarProgress,
            size: widget.progressbarSize,
            backgroundColor: widget.progressbarBackgroundColor,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.cardTexts['title'],
                style: const TextStyle(
                    fontSize: 13.5,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(widget.cardTexts['description1']),
              const SizedBox(
                height: 5,
              ),
              Text(widget.cardTexts['description2']),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 30,
                  height: 30,
                  child: IconButton(
                    onPressed: () => {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
