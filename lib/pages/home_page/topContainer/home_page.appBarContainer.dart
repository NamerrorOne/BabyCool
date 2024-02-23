import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:platform_school/pages/home_page/topContainer/home_page.studentsCountButton.dart';

class TopContainer extends StatefulWidget {
  const TopContainer({super.key});

  @override
  State<TopContainer> createState() => _TopContainerState();
}

class _TopContainerState extends State<TopContainer> {
  final String studentsCount = '12 567';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      width: double.infinity,
      height: 360,
      decoration: BoxDecoration(color: Colors.blue[300]),
      child: Stack(
        children: [
          Positioned(
              top: 80,
              left: 270,
              child: SvgPicture.asset('assets/homepage/images/cloud_2.svg')),
          Positioned(
              top: 60,
              left: 90,
              child: SvgPicture.asset(
                  width: 25, height: 25, 'assets/homepage/images/cloud_1.svg')),

          Positioned(
              top: 210,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                width: MediaQuery.of(context).size.width,
                height: 150,
              )),
          Positioned(
              width: MediaQuery.of(context).size.width,
              top: 140,
              child: SvgPicture.asset(
                  fit: BoxFit.fill, 'assets/homepage/images/under.svg')),
          Positioned(
              left: (MediaQuery.of(context).size.width - 352) / 2,
              top: 210,
              child: StudentsButton(
                isUser: true,
                studentsCount: studentsCount.toString(),
              )),
          Positioned(
              top: 140,
              left: 310,
              child: SvgPicture.asset(
                  'assets/homepage/images/cloud_3.svg')), // under image
          Positioned(
              top: 50,
              left: 0,
              width: MediaQuery.of(context).size.width,
              child: SvgPicture.asset(
                  fit: BoxFit.fill, 'assets/homepage/images/Group.svg')),
        ],
      ),
    );
  }
}
