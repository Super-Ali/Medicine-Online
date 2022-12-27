import 'package:doctor_fyp/constant.dart/const.dart';
import 'package:doctor_fyp/widgets/notify.dart';
import 'package:flutter/material.dart';
class messages extends StatefulWidget {

  @override
  _messagesState createState() => _messagesState();
}

class _messagesState extends State<messages> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
            child: Icon(Icons.arrow_back_ios,color: Colors.blue,),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          title: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/fm.jpg",),
              
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.green,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10,left: 10),
                child: Text("Tawfeeq Bahri",style:simplestyle1() ,))
            ],
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.call,color: Colors.blue,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.dangerous_outlined,color: Colors.blue,))
          ],
        ),
        body:Container(
          child: Stack(
            children: [
               Container(
          height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  receiver(context,"assets/images/fm.jpg", "Hello",MediaQuery.of(context).size.height*0.047,MediaQuery.of(context).size.width*0.2,),
                  senderMessage(context, "assets/images/doc4.png", "Hello Doctor?\nHow are you",MediaQuery.of(context).size.width*0.3 , MediaQuery.of(context).size.height*0.08),
                  receiver(context,"assets/images/fm.jpg", "Fine\nI hope you are doing well",MediaQuery.of(context).size.height*0.07,MediaQuery.of(context).size.width*0.5),
                  receiver(context,"assets/images/fm.jpg", "  Don't forget about your next  \t\t appointment",MediaQuery.of(context).size.height*0.08,MediaQuery.of(context).size.width*0.51),
                 SizedBox(height: MediaQuery.of(context).size.height*0.4),
                 
                  
                ],
              ),
            ),
          ),
           Positioned(
             
             bottom: 0,
             child: Container(
               color: Colors.white,
                      child: Row(
                        children: [
                          Container(
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.file_present,color: Colors.blue,))),
                          
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_sharp,color: Colors.blue,))),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              height: MediaQuery.of(context).size.width*0.07,
                              width: MediaQuery.of(context).size.width*0.6,
                              child: TextFormField(
                                
                                decoration: InputDecoration(
                                hintText: "Enter message",  
                                contentPadding: EdgeInsets.only(top: 5,bottom: 5,left: 5),
                                isDense: true,
                                filled: true,
                                fillColor: Colors.grey[300],
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                )
                                ),
                              ),
                              
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child:IconButton(onPressed: (){}, icon: Icon(Icons.send,color: Colors.blue,))
                            ),
                        ],
                      ),
                    ),
           ),
            ],
          ),
        )
          ),
      )
    ;
  }
}