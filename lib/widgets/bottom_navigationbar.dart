import 'package:flutter/material.dart';
import 'package:hiirize/pages/events.dart';
import 'package:hiirize/pages/homepage.dart';
import 'package:hiirize/utils/constants.dart';
import 'package:hiirize/widgets/bottomicons.dart';

class BottomnavigationBar extends StatelessWidget {
  const BottomnavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 72,
      decoration: ShapeDecoration(
    color: primarycolor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           BottomIcons(icon: Icons.home_outlined,fun: const HomePage(),),
            BottomIcons(icon: Icons.event_outlined,fun: const Event(),),
             BottomIcons(icon: Icons.person_outlined,fun: const HomePage(),),
          ],
        ),
      ),
    );
  }
}