import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class InsideFeed extends StatelessWidget {
  InsideFeed(
      {required this.text,
      required this.childrens,
      required this.text2,
      super.key});
  String text;
  List<Widget> childrens;
  String text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Expanded(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.google.com/search?q=image&sca_esv=573369116&rlz=1C1GCEA_enIN1022IN1022&tbm=isch&sxsrf=AM9HkKnWV4qetbZnXncsdKcDPcRjnFQtJg:1697255058041&source=lnms&sa=X&ved=2ahUKEwjuns_mz_SBAxVgZ2wGHZ7dDmAQ_AUoAXoECAEQAw&biw=1536&bih=707&dpr=1.25#vhid=02uZotqeBRGURM&vssid=3981:CBp1Je9xFsWFiM"),
              ),
              Text(
                '\t\t$text',
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height / 52,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: childrens,
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              text2,
              style: GoogleFonts.openSans(
                color: Colors.black,
                
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      )),
    );
  }
}
