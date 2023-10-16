import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiirize/pages/choosegender.dart';
import 'package:hiirize/pages/create_post.dart';
import 'package:hiirize/pages/homepage.dart';
import 'package:hiirize/utils/constants.dart';
import 'package:hiirize/widgets/buddyformed.dart';
import 'package:hiirize/widgets/inside_feed.dart';
import 'package:hiirize/widgets/outlinecontainer.dart';
import 'package:hiirize/widgets/squarebutton.dart';

class PlacementPrep extends StatelessWidget {
  const PlacementPrep({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(12),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Placement/Exam Prep\nTogether',
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '221 Participants',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomePage()));
                              },
                              icon: const Icon(Icons.arrow_back_ios)),
                        ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.12,
                  decoration: ShapeDecoration(
                    gradient:  LinearGradient(
                      begin: const Alignment(-1.00, 0.09),
                      end:const  Alignment(1, -0.09),
                      colors: [const Color(0xFFE4A430), primarycolor],
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
                          '''Some Info About The \n Importance Of This\n Interest Group''',
                         textAlign: TextAlign.left,
                          style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                       SvgPicture.asset("assets/Group.svg")  ,            
                      ]),
                ),
                 SizedBox(
                  height: 24.h,
                ),
                 ElevatedButton(
                                    
                                      onPressed: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ChooseGender()));
                                      },
                                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(primarycolor),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                          Padding(
                                                            padding: EdgeInsets.only(
                                                              right: 16.w
                                                            ),
                                                            child: Image.asset("assets/Hug.png"),
                                                          ),
                                                         
                                                            Text(
                                                              'Find Buddy',
                                                              style: GoogleFonts.openSans(
                                                                color: Colors.white,
                                                                fontSize: 14.sp,
                                                                fontWeight: FontWeight.w600,
                                                              ),
                                                            ),
                                                          ],
                                        ),
                                      )),
                                      SizedBox(height: 24.h,),
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
      ));
  }
}