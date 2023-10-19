import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiirize/pages/create_post.dart';
import 'package:hiirize/pages/homepage.dart';
import 'package:hiirize/utils/constants.dart';
import 'package:hiirize/widgets/buddyformed.dart';
import 'package:hiirize/widgets/inside_feed.dart';
import 'package:hiirize/widgets/outlinecontainer.dart';
import 'package:hiirize/widgets/squarebutton.dart';

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  int currentIndex=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(12),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Abc institute of Technology',
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '4574 members',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                GestureDetector(
                  onTap: () {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomePage()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(-1.00, 0.09),
                        end: Alignment(1, -0.09),
                        colors: [Color(0xFF1F2F98), Color(0xFF2EAAFA)],
                      ),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 2, color: Color(0x661B287F)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '''Within your college, find Buddy\n(accountability partner) for your\ninterest, have fun and grow together!''',
                            style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_forward_ios)),
                          ),
                        ]),
                  ),
                ),
                 SizedBox(
                  height: 24.h,
                ),
                MyContainer(
                  mywidget: const BuddyFormed(),
                ),
                 SizedBox(
                  height: 24.h,
                ),
                Text(
                  'Feed',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                 SizedBox(
                  height: 24.h,
                ),
                MyContainer(mywidget: InsideFeed(text: "Anonymous", childrens: [SquareButton(title: "#MyReason",),
                SquareButton(title: "Music/Singing", icon: Icons.arrow_forward_ios)], text2: "I want To Pursue it Because I realise \n it will Add To My Personality.Might \n Help Me Impress Girls as well")),
 SizedBox(
                  height: 24.h,
                ),
                   MyContainer(mywidget: InsideFeed(text: "Raj", childrens: [SquareButton(title: "#MyAction",),
                SquareButton(title: "PlacementPrep", icon: Icons.arrow_forward_ios)], text2: "We Decided To Study Together In Library.\n Looking Forward!")),
 SizedBox(
                  height: 24.h,
                ),
                   MyContainer(mywidget: InsideFeed(text: "Preeti", childrens: [SquareButton(title: "#Achievements",),
                SquareButton(title: "Book", icon: Icons.arrow_forward_ios)], text2: "We Met On This App And Now We Have\n Started Our Insta Page On Book Reviews!")),
              ]),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 37.h,
                        right: 29.w,
                      ),
                      child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: ElevatedButton(
                                    onPressed: () {
                                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CreatePost()));
                                    },
                                    style: ButtonStyle(
                                      backgroundColor: const MaterialStatePropertyAll(Colors.white),
                                      shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(66.67.r),
                      ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                      Image.asset("assets/Create.png"),
                      Text(
                        'Post ',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                                      ],
                                    ),
                                  ),
                                ),
                    ),
        ],
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
            items: [
              BottomNavigationBarItem(
                  icon: FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomePage()));
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    child: Icon(
                      Icons.home_outlined,
                      color: (currentIndex != 0) ? Colors.black : primarycolor,
                    ),
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Event()));
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                    child: Icon(
                      Icons.event_outlined,
                      color: (currentIndex != 1) ? Colors.black : primarycolor,
                    ),
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                     setState(() {
                        currentIndex = 2;
                      });
                    },
                    child: Icon(
                      Icons.person_outline,
                      color: (currentIndex != 2) ? Colors.black : primarycolor,
                    ),
                  ),
                  label: ""),
            ],
          ),
        ),
    ));
  }
}
