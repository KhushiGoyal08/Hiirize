import 'package:flutter/material.dart';
import 'package:hiirize/pages/events.dart';
import 'package:hiirize/pages/homepage.dart';
import 'package:hiirize/utils/constants.dart';

class BottomnavBar extends StatefulWidget {
  const BottomnavBar({super.key});

  @override
  State<BottomnavBar> createState() => _BottomnavBarState();
}

class _BottomnavBarState extends State<BottomnavBar> {
    var currentIndex=0;
    List<Widget> screen=[
     const  HomePage(),
     const  Event(),
     const HomePage()
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
      index: currentIndex,
        children:screen,
      ),
      bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
          child: BottomNavigationBar(
            backgroundColor: primarycolor,
            currentIndex: currentIndex,
            unselectedItemColor: Colors.black,
            onTap: (value){
              setState(() {
                currentIndex=value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: (currentIndex != 0) ? Colors.black : Colors.white,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.event_outlined,
                    color: (currentIndex != 1) ? Colors.black :Colors.white,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline,
                    color: (currentIndex != 2) ? Colors.black :Colors.white,
                  ),
                  label: ""),
            ],
          ),
        ),
    );
  }
}