import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiirize/pages/homepage.dart';
import 'package:hiirize/widgets/dropdown.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Create Post',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomePage()));
                    },
                    icon: const Icon(Icons.close))
              ],
            ),
            SizedBox(
              height: 28.h,
            ),
 Align(
                alignment: Alignment.topLeft, 
                child:Stack(
                  children: [
                    Container(
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
      side:const  BorderSide(
       
        strokeAlign: BorderSide.strokeAlignOutside,
        color:  Color(0xFFD9D9D9),
      ),
      borderRadius: BorderRadius.circular(7.47.r),
    ),
                    ),
                      child:  Padding(
                        padding:  const EdgeInsets.all(16),
                        child:  Text(
                        'Choose Tag  \t▾',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontSize: 12.sp,
                          
                          fontWeight: FontWeight.w600,
                         
                        ),
                                          ),
                      ),
                    ),
 const  DropdownButtonExample(),
                  ],
                )),
            SizedBox(
              height: 24.h,
            ),
            Container(
                width: 314.32.w,
                height: 175.h,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF5F5F5),
                  shape: RoundedRectangleBorder(
                    side:
                        BorderSide(width: 2.w, color: const Color(0xFFD9D9D9)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Write about your\n experience.',
                    style: GoogleFonts.roboto(
                      color: const Color(0x68666666),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )),
            SizedBox(
              height: 293.h,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {},
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
          ]),
        ),
      ),
    );
  }
}
