
import 'package:doctor_fyp/constant.dart/const.dart';
import 'package:doctor_fyp/sizeConfig.dart';
import 'package:doctor_fyp/views/dashboard_screen.dart';
import 'package:doctor_fyp/views/forgot_passwor.dart';
import 'package:doctor_fyp/views/sign_up.dart';
import 'package:doctor_fyp/widgets/txt_field_widget.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: PADDING,
              child: TextField(
                        decoration: textfield_decoration("Username", Icons.email),
                      ),
                      
            ),
             Container(
              padding: PADDING,
              child: TextField(
                        decoration: textfield_decoration("Password", Icons.lock),
                      ),    
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
               TextButton(
                onPressed: (){
                  Get.to(ForgotPassword());
                }, child: Text('Forgot your password?'))
              ],
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
         Get.to(DashBoard());
       }, 
        child: Text('Login',style: TextStyle(color: Colors.white),)),
    ),
    Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
               TextButton(
                onPressed: (){
                  Get.to(SignUp());
                }, 
                child: Text('Don\'t have an account? Signup'))
              ],
            ),
            // Container(
            //   height: 1*(SizeConfig.heightMultiplier),
            //   width: 10*(SizeConfig.heightMultiplier),
            //   child: TextButton(
            //     onPressed: (){}, 
            //     child: Text('Login',style: TextStyle(color: Colors.black),)
            //     ),
            // )

          ],
        ),
      ),
    );
  }

 
}

// class ButtonClass extends StatelessWidget {
//   Function? press;
//     String? name;
//     Color? clr;
//    ButtonClass({
//       press,
//       name,
//       clr,
//     Key? key,
//   }) : super(key: key,  );

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//      width: 50*(SizeConfig.widthMultiplier),
//       margin: EdgeInsets.all(25), 
      
//       decoration: BoxDecoration(
//        color:clr, 
//        borderRadius: BorderRadius.all(Radius.circular(12))
//       ),
//       child: OutlinedButton(
//        onPressed:()=>press ,
//         child: Text(name!,style: TextStyle(color: Colors.white),)),
//     );
//   }
// }