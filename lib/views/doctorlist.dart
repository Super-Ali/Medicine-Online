import 'package:doctor_fyp/constant.dart/const.dart';
import 'package:doctor_fyp/views/visitDetail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ListDoct extends StatefulWidget {

  @override
  _ListDoctState createState() => _ListDoctState();
}

class _ListDoctState extends State<ListDoct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
        children: [
          // Check(onPress: (){},),
          GestureDetector(
            onTap: (){
              Get.to(VisitDetail());
            },
            child: Container(
              margin: EdgeInsets.only(top: 15,left: 15,right: 15,),
              height: MediaQuery.of(context).size.height*0.09,
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/doc1.jpg"),
                    ),
                  ),
               Container(
                 margin: EdgeInsets.only(top: 10),
                 child: doctorList( "Tawfeeq Bahri", "Family doctor", "Psycholgy")
               ),
               // ignore: deprecated_member_use
               Container(
                 margin: EdgeInsets.only(left: 60),)
                //  child: RaisedButton(child:Text("Details"),onPressed: (){},color: Colors.blue,textColor: Colors.white,))
              ],
              ),
            ),
          ),


          //
           Container(
            margin: EdgeInsets.only(top: 15,left: 15,right: 15,),
            height: MediaQuery.of(context).size.height*0.09,
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/fm.jpg"),
                  ),
                ),
             Container(
               margin: EdgeInsets.only(top: 10),
               child: doctorList( "Tawfeeq Bahri", "Family doctor", "Psycholgy")
             ),
             // ignore: deprecated_member_use
             Container(
               margin: EdgeInsets.only(left: 60),)
              //  child: RaisedButton(child:Text("Details"),onPressed: (){},color: Colors.blue,textColor: Colors.white,))
            ],
            ),
          ),
         Container(
            margin: EdgeInsets.only(top: 15,left: 15,right: 15,),
            height: MediaQuery.of(context).size.height*0.09,
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/doc3.png"),
                  ),
                ),
             Container(
               margin: EdgeInsets.only(top: 10),
               child: doctorList( "Tawfeeq Bahri", "Family doctor", "Psycholgy")
             ),
             // ignore: deprecated_member_use
             Container(
               margin: EdgeInsets.only(left: 60),)
              //  child: RaisedButton(child:Text("Details"),onPressed: (){},color: Colors.blue,textColor: Colors.white,))
            ],
            ),
          ),
         Container(
            margin: EdgeInsets.only(top: 15,left: 15,right: 15,),
            height: MediaQuery.of(context).size.height*0.09,
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/doc2.jpg"),
                  ),
                ),
             Container(
               margin: EdgeInsets.only(top: 10),
               child: doctorList( "Tawfeeq Bahri", "Family doctor", "Psycholgy")
             ),
             // ignore: deprecated_member_use
             Container(
               margin: EdgeInsets.only(left: 60),)
              //  child: RaisedButton(child:Text("Details"),onPressed: (){},color: Colors.blue,textColor: Colors.white,))
            ],
            ),
          ),
        ],
      ),
      
    );
  }
}