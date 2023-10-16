import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyContainer extends StatelessWidget {
  MyContainer({required this.mywidget, super.key});
Widget mywidget;
  @override
  Widget build(BuildContext context) {
    return Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height*0.2,
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
         child:mywidget,
            );
  }
}