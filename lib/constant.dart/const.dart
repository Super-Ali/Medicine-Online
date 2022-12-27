// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

const PADDING = EdgeInsets.symmetric(horizontal :20, vertical: 10);

const VER_PADDING = EdgeInsets.symmetric(vertical :10);

const HOR_PADDING = EdgeInsets.symmetric(vertical :10);

const KPADDING=10.0;


  TextStyle simplestyle(){
    return TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600 );
  }

 // ignore: non_constant_identifier_names
 InputDecoration textfield_decoration(String text_field, IconData icon) {
    return InputDecoration(
                        prefixIcon: Icon(icon),
                        border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(25)),),
                        labelText: text_field,
       
                      );
  }

  Container examination(BuildContext context, String imgPath,String title,String date,String btnTxt){
  return Container(
    height: MediaQuery.of(context).size.height*0.14,
    margin: EdgeInsets.only(top:20,left: 20,right: 20),
    decoration: BoxDecoration(
      color: Colors.grey[200]
    ),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
Container(
  margin: EdgeInsets.only(top:20,left: 15 ),
  child: CircleAvatar(
    radius: 30,
    backgroundImage: AssetImage(imgPath),
  ),
),
Container(
  margin: EdgeInsets.only(top:30,left:20),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
  
    children: [
  
      Text(title),
  
      Text(date,style: TextStyle(color: Colors.grey),),
  
      TextButton(onPressed: (){}, child: Text(btnTxt))
  
    ],
  
  ),
)
    ],
  ),
    
    
  );
}

Container messageList(BuildContext context,String path,String doctorName,String message,String time,{int?  messages}){
  
  return  Container(
      margin: EdgeInsets.only(top: 20,left: 20),
      child: Row(
        children: [
        Container(
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(
              path
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10,left: 10),
          width: MediaQuery.of(context).size.width*0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Container(
                 child: Text(doctorName)),
                Text(message,style: TextStyle(color: Colors.grey[400]),)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            Container(
            child: Text(
                time,
                style: TextStyle(color: Colors.blue,),),
            ),
            Container(
              // width: 20,
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                color:messages !=null? Colors.blue : Colors.white,
                borderRadius: BorderRadius.circular(100)
  
              ),
              child:Center(child: messages !=null ? Text(messages.toString()):null))
          ],),
        )
  
      ],),
    
  );
}

  TextStyle simplestyle1(){
    return TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600 );
  }

    Column doctorList(String name,String title,String passion){
  
     return    Column(
children: [
  Container(child: Text(name,style: TextStyle(fontSize: 16),),),
  
  Container(child: Text(title,style: TextStyle(color: Colors.grey),),),
  
  Container(child: Text(passion,style: TextStyle(color: Colors.grey),),),
 // RaisedButton(onPressed: onpress )
],);
        
  }