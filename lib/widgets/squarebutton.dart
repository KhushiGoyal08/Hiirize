import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiirize/utils/constants.dart';

// ignore: must_be_immutable
class SquareButton extends StatelessWidget {
  SquareButton({required this.title, this.icon, super.key});
  IconData? icon;
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.w,
      height: 40.h,
      padding: const EdgeInsets.all(9.33),
      decoration: ShapeDecoration(
        color: primarycolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.47.r),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                fontSize: 12.sp,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Icon(
            icon,
            color: Colors.white,
            size: 12.sp,
          ),
        ],
      ),
    );
  }
}
