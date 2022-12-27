import 'package:doctor_fyp/constant.dart/const.dart';
import 'package:flutter/material.dart';
class Examination extends StatefulWidget {
  const Examination({ Key? key }) : super(key: key);

  @override
  _ExaminationState createState() => _ExaminationState();
}

class _ExaminationState extends State<Examination> {
  @override
  Widget build(BuildContext context) {
    return
    Container(
      child: Column(
        children: [
          examination(context,"assets/images/st.jfif", "Physical Examination", "14/02/2019", "see_reports ->"),
          
          examination(context,"assets/images/sta.jfif", "MRI Examination", "22/11/2019", "see_reports ->"),

        ],
      )
    );
  }
}