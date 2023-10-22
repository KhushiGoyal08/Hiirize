import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiirize/utils/constants.dart';

const List<String> list = <String>['#myReason\nyour reason to start this initiative', '#struggleStory\nyour struggle you faced during ...', '#myAction\naction you take for this initiative', '#achievementSmallOrBig\nevery achievement matters small/big.'];


class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
   
    iconEnabledColor: Colors.white,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
    
      onChanged: (String? value) {
       
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Container(
          color: (dropdownValue==value)?selecteddropcolor:Colors.white,
            child: (dropdownValue==value)?
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.check_circle,
                  color: primarycolor,),
                const  SizedBox(
                width: 10,
                ),
            
                  Text(
                        value ,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                ],
              ),
            )
            : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                 const  Icon(Icons.check_circle,
                  color: Colors.white),
                const  SizedBox(
                width: 10,
                ),
            
                  Text(
                        value ,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                ],
              ),
            )
          ),
        );
      }).toList(),
    );
  }
}
