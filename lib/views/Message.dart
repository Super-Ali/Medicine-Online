import 'package:doctor_fyp/constant.dart/const.dart';
import 'package:doctor_fyp/views/doccotrsMessage.dart';
import 'package:flutter/material.dart';
class Meassge extends StatefulWidget {
  const Meassge({ Key? key }) : super(key: key);

  @override
  _MeassgeState createState() => _MeassgeState();
}

class _MeassgeState extends State<Meassge> {
  final _color=Colors.red;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100)
            ),
            margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Padding(
              padding: const EdgeInsets.only(left: 0),
              child: TextField(
                
                decoration:InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(100),
                    borderSide: BorderSide.none,
                    
                  ),
                  hintText: "Search messages",
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[200],
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(100),
                    
                    
                  )
                ),
                
                
              ),
            ),
          ),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => messages()));
          }, child: messageList(context,"assets/images/doc4.png", "Tawfiq Bahri", "Your Next appointment", "11:05 AM", messages:10)),
          messageList(context,"assets/images/doc3.png", "Jouseph Bouroumat", "Don't forgot your blood test", "08:31 AM",messages: 2,),
          messageList(context,"assets/images/fm.jpg", "Liza Anderson", "You: Good news", "03:40 PM"),
          Container(
            color: Colors.white,
          )
          
        ],
      ),
    
    );
  }
}