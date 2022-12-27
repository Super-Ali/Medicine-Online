import 'package:doctor_fyp/constant.dart/const.dart';
import 'package:doctor_fyp/sizeConfig.dart';
import 'package:doctor_fyp/views/login_screen.dart';
import 'package:doctor_fyp/widgets/txt_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: PADDING,
                child: TextField(
                          decoration: textfield_decoration("Name", Icons.person),
                        ),    
              ),
              Container(
                padding: PADDING,
                child: TextField(
                          decoration: textfield_decoration("E-mail", Icons.email),
                        ),    
              ),
              Container(
                padding: PADDING,
                child: TextField(
                          decoration: textfield_decoration("Mobile Number", Icons.phone),
                        ),    
              ),
              const SizedBox(height: KPADDING,),

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
        child: Text('Login',style: TextStyle(color: Colors.white),)),

    ),
    OutlinedButton(
       onPressed: () {
        Get.offAll(loginScreen());
       }, 
        child: Text('Already have an account?',style: TextStyle(color: Colors.blue),)),

            ],
          ),
        ),
      ),
    );
  }
}