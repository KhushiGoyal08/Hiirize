import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiirize/pages/placementprep.dart';
import 'package:hiirize/utils/constants.dart';

import 'package:hiirize/widgets/smallcard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'ExploRE Interest',
            style: GoogleFonts.openSans(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          // shrinkWrap: true,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width * 0.4,
                        child: Container(
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 2,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Color(0xFFD9D9D9),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Expanded(
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/Meeting.png",
                                  height:
                                      MediaQuery.of(context).size.width * 0.3,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Socialize, connect with Your\nCollege mates.',
                                      style: GoogleFonts.openSans(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      '221 participants',
                                      style: GoogleFonts.openSans(
                                        color: primarycolor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        height: 0.08,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const PlacementPrep()));
                                    },
                                    child: SmallCard(
                                        image: "assets/Houseparty.png",
                                        title1: "Placement Prep\n Together")),
                                SmallCard(
                                  image: "assets/Rocket.png",
                                  title1:
                                      "Startup Together\nDiscuss Shark \nTank/Silicon Valley",
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SmallCard(
                                  image: "assets/Bench Fitness.png",
                                  title1: "Go Gym Together\nFor Consistency",
                                ),
                                SmallCard(
                                  image: "assets/Houseparty.png",
                                  title1: "Music/Singing",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20.0), // Adjust the radius as needed
                              ),
                            ),
                            backgroundColor:
                                MaterialStatePropertyAll(primarycolor),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.messenger_outline),
                              const SizedBox(
                                width: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'Msg Interest to Us',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    height: 0.10,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
