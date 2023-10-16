import 'package:flutter/material.dart';
import 'package:hiirize/extra/button.dart';
import 'package:hiirize/pages/choosegender.dart';
import 'package:hiirize/pages/create_post.dart';
import 'package:hiirize/pages/events.dart';
import 'package:hiirize/pages/homepage.dart';
import 'package:hiirize/pages/match_found.dart';
import 'package:hiirize/pages/placementprep.dart';
import 'package:hiirize/pages/some_rules.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});
 
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:   Scaffold(
        body:   SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: [
               Button(text:"HomePage",fun:HomePage(),),
                Button(text:"Event",fun:Event(),),
                  Button(text:"Some Rules",fun:SomeRules(),),
                     Button(text:"Match Found ",fun:MatchFound(),),
                   Button(text:"Create Post ",fun:CreatePost(),), 
                   Button(text:"Choose Gender ",fun:ChooseGender(),),
                    Button(text:"Placement Prep ",fun:PlacementPrep(),),    
              ],
              ),
          ),
        ),
      ),
    );
  }

  
}