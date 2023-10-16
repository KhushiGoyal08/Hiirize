import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiirize/pages/match_found.dart';
import 'package:hiirize/utils/constants.dart';

class SomeRules extends StatelessWidget {
  const SomeRules({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 63.h, left: 20.w, right: 20.w),
        child: Expanded(
          child: Column(
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Some Rules',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(onPressed: () {
                  Navigator.pop(context);
                }, icon: const Icon(Icons.close))
              ],
            ),
            SizedBox(
              height: 28.h,
            ),
            Image.asset("assets/Bookmark.png"),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              width: 335.w,
              height: 114.h,
              child: Text(
                'Some rules on how to make the best use of \nthe accountability group formed.',
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.10.w,
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            ElevatedButton(
              
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MatchFound()));
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
                  padding: EdgeInsets.symmetric(
                    vertical: 16.h,
                    horizontal: 80.w,
                  ),

                  child: Text(
                    'I Agree.Find Buddy',
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
