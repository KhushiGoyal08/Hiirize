 import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({required this.text,required this.fun,super.key});
final String text;
final Widget fun;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) =>  fun),);
          }, 
          child: Text(text)
          );
  }
}