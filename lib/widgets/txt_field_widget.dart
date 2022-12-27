import 'package:doctor_fyp/constant.dart/const.dart';
import 'package:flutter/material.dart';

class TextFieldWidet extends StatefulWidget {
  String? txt_name;
   IconData? icon ;
   TextFieldWidet({
     txt_name ,
     icon,
    Key? key,
  }) : super(key: key);

  @override
  State<TextFieldWidet> createState() => _TextFieldWidetState();
}

class _TextFieldWidetState extends State<TextFieldWidet> {
 

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: textfield_decoration(widget.txt_name?? "", widget.icon?? Icons.lock),
    );
  }
}