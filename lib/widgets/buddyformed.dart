import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiirize/utils/constants.dart';

class BuddyFormed extends StatelessWidget {
  const BuddyFormed({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12
      ),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Buddies formed.\t',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                     
                      TextSpan(
                        text: '21',
                        style: GoogleFonts.openSans(
                          color: primarycolor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                  CircleAvatar(
            backgroundColor: Colors.white10,
            child: IconButton(
                    
              onPressed: (){},
               icon:const  Icon(Icons.arrow_forward_ios)),
          ),
              ],
            ),
            Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       const   CircleAvatar(
       backgroundImage: NetworkImage("https://www.google.com/search?q=image&sca_esv=573369116&rlz=1C1GCEA_enIN1022IN1022&tbm=isch&sxsrf=AM9HkKnWV4qetbZnXncsdKcDPcRjnFQtJg:1697255058041&source=lnms&sa=X&ved=2ahUKEwjuns_mz_SBAxVgZ2wGHZ7dDmAQ_AUoAXoECAEQAw&biw=1536&bih=707&dpr=1.25#vhid=02uZotqeBRGURM&vssid=3981:CBp1Je9xFsWFiM"),
       ),
        const SizedBox(width: 46),
        Text(
          'K & L',
          style: GoogleFonts.openSans(
            color: Colors.black,
            fontSize: 14,
            
            fontWeight: FontWeight.w700,
            height: 0.10,
          ),
        ),
        const SizedBox(width: 46),
        const   CircleAvatar(
        backgroundImage: NetworkImage("https://www.google.com/search?q=image&sca_esv=573369116&rlz=1C1GCEA_enIN1022IN1022&tbm=isch&sxsrf=AM9HkKnWV4qetbZnXncsdKcDPcRjnFQtJg:1697255058041&source=lnms&sa=X&ved=2ahUKEwjuns_mz_SBAxVgZ2wGHZ7dDmAQ_AUoAXoECAEQAw&biw=1536&bih=707&dpr=1.25#vhid=02uZotqeBRGURM&vssid=3981:CBp1Je9xFsWFiM"),
       ),
      ],
      ),
       Text(
      'Buddy formed!',
      textAlign: TextAlign.center,
      style: GoogleFonts.openSans(
        color: Colors.black,
        fontSize: 14,
       
        fontWeight: FontWeight.w600,
        height: 0.10,
      ),
      ),
          ],
        ),
      ),
    );
  }
}
