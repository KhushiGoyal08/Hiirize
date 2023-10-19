// import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class BottomIcons extends StatefulWidget {
//    BottomIcons({required this.icon,required this.fun,  super.key});
// IconData? icon;
// bool pressed=true;
// Widget fun;
//   @override
//   State<BottomIcons> createState() => _BottomIconsState();
// }

// class _BottomIconsState extends State<BottomIcons> {
//   @override
//   Widget build(BuildContext context) {
//     return  CircleAvatar(
//             backgroundColor: Colors.white,
//             child: IconButton(
//               onPressed: (){
//                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>widget.fun));
//               },
//                icon:  Icon(widget.icon),
//                ),
//           );
//   }
// }