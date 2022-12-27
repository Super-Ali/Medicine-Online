import 'package:doctor_fyp/constant.dart/const.dart';
import 'package:doctor_fyp/sizeConfig.dart';
import 'package:doctor_fyp/widgets/txt_field_widget.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: PADDING,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                        decoration: textfield_decoration("Email", Icons.email),
                      ),   

              Container(
     width: 50*(SizeConfig.widthMultiplier),
      margin: EdgeInsets.all(25), 
      
      decoration: BoxDecoration(
       color:Colors.blue, 
       borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      child: OutlinedButton(
       onPressed: () {
         
       }, 
        child: Text('Reset password',style: TextStyle(color: Colors.white),)),
    ),
            ],
          ),
        ),
      ),
    );
  }
}
