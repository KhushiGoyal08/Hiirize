import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiirize/pages/some_rules.dart';
import 'package:hiirize/utils/constants.dart';

class ChooseGender extends StatelessWidget {
  const ChooseGender({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.h),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose Gender',
                    style: GoogleFonts.openSans(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close))
                ],
              ),
              SizedBox(
                height: 38.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Container(
                    width: 95.w,
                    height: 95.h,
                    padding: const EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 1.w, color: const Color(0xFFD9D9D9)),
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                    ),
                    child: Image.asset("assets/User Male.png"),
                  ),
                  Container(
                    width: 95.w,
                    height: 95.h,
                    padding: const EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 1.w, color: const Color(0xFFD9D9D9)),
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                    ),
                    child: Image.asset("assets/female.png"),
                  ),
                  Container(
                    width: 95.w,
                    height: 95.h,
                    padding: const EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 1.w, color: const Color(0xFFD9D9D9)),
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                    ),
                    child: Image.asset("assets/Unisex.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Whomever you get matched with, your aim is to\nSocialize, build connections, and experience.',
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.10,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                width: 335.w,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 2.w,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: const Color(0xFFD9D9D9),
                    ),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Whatsapp number or telegram userlD',
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            height: 0.09,
                          ),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            label: Center(
                              child: Text(
                                'Enter your whatsapp number or telegram userlD',
                                style: GoogleFonts.roboto(
                                  color: Colors.grey,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 0.10,
                                ),
                              ),
                            ),
                          ),
                        ),
                         SizedBox(
                          height: 24.h,
                        ),
                        Text(
                          "(We'll soon realease in app chat feature.)",
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.10,
                          ),
                        ),
                         SizedBox(
                          height: 24.h,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SomeRules()));
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size.fromHeight(50.h),
                              backgroundColor: primarycolor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                            ),
                            child: Text(
                              'Next',
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                      ]),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  '''Provide whatsapp/telegram to chat once paired. \nUse telegram userld if you doesn't want to\ndisclose your number.''',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
