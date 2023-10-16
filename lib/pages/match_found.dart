import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiirize/pages/placementprep.dart';
import 'package:hiirize/utils/constants.dart';

class MatchFound extends StatelessWidget {
  const MatchFound({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            top: 19.h,
            left: 20.w,
            right: 20.w,
          ),
          child: Column(children: [
            Align(
              alignment: Alignment.topRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const PlacementPrep()));
                },
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(66.67.r),
                    ),
                  ),
                ),
                child: Text(
                  'Leave  ✕ ',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              width: 335.w,
              height: 212.04.h,
              padding: EdgeInsets.symmetric(vertical: 20.h),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 40.r,
                        backgroundImage: const NetworkImage(
                            "https://www.google.com/search?q=image+of+girls&sca_esv=573595341&rlz=1C1GCEA_enIN1022IN1022&tbm=isch&sxsrf=AM9HkKnF-ULS0eAyOoxyEc_o6xOB5R_HBQ:1697369866761&source=lnms&sa=X&sqi=2&ved=2ahUKEwjUste_-_eBAxWRU2wGHR5TCLAQ_AUoAXoECAIQAw&biw=1536&bih=707&dpr=1.25#imgrc=FyU3tBHpzfv9gM"),
                      ),
                      SizedBox(
                        width: 22.w,
                      ),
                      CircleAvatar(
                        radius: 40.r,
                        backgroundImage: const NetworkImage(
                            "https://www.google.com/search?q=image+of+girls&sca_esv=573595341&rlz=1C1GCEA_enIN1022IN1022&tbm=isch&sxsrf=AM9HkKnF-ULS0eAyOoxyEc_o6xOB5R_HBQ:1697369866761&source=lnms&sa=X&sqi=2&ved=2ahUKEwjUste_-_eBAxWRU2wGHR5TCLAQ_AUoAXoECAIQAw&biw=1536&bih=707&dpr=1.25#imgrc=FyU3tBHpzfv9gM"),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Raj',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Priya',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'Some info about each other and  how to \n make this best use of this partnership',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Now whatsapp/telegram your buddy \n that you’ve found him/her!',
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 30.96.h,
            ),
            Container(
              width: 314.w,
              height: 203.h,
              decoration: ShapeDecoration(
                color: const Color(0xFFF5F5F5),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 2.w, color: const Color(0xFFD9D9D9)),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                shadows: [
                  BoxShadow(
                    color: const Color(0x0A000000),
                    blurRadius: 12.r,
                  ),
                ],
              ),
              child: Stack(
                children: [
                
                Padding(
                  padding:  EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 72.h
                  ),
                  child: Text(
                    'Hey, we got matched on hiirize app. Let’s make the best use of this partnership!.\n\n\n',
                    style: GoogleFonts.openSans(
                      color: Colors.black,
                      fontSize: 14.sp,
                      
                      fontWeight: FontWeight.w600,
                     
                    
                    ),
                  ),
                ),
                  Positioned(
                   top: 46.h,
                   left: 22.w,
                    child: Text(
                    '“',
                    style: GoogleFonts.modak(
                      color: primarycolor,
                      fontSize: 84.38.sp,
                      fontWeight: FontWeight.w400,
                      height: 0.02.h,
                    ),
                                  ),
                  ),
                ],
              ),
            ),
           SizedBox(height: 12.h,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                                
                                  onPressed: () {},
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
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                      Image.asset("assets/WhatsApp.png"),
                                                        Text(
                                                          ' Send Whatsapp/Telegram Msg',
                                                          style: GoogleFonts.openSans(
                                                            color: Colors.white,
                                                            fontSize: 14.sp,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),
                                                      ],
                                    ),
                                  )),
                  ),
          ]),
        ),
      ),
    );
  }
}
