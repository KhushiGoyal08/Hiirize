import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiirize/utils/constants.dart';

// ignore: must_be_immutable
class SmallCard extends StatelessWidget {
  SmallCard({required this.title1, required this.image, super.key});
  String? image;
  String? title1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.45,
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
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.asset(
            image!,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
            Text(
              title1!,
             
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ]),
          Text(
            '221 participants',
            style: GoogleFonts.openSans(
              color: primarycolor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ]),
      ),
    );
  }
}
