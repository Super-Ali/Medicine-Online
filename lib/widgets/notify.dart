import 'package:doctor_fyp/views/visitDetail.dart';
import 'package:flutter/material.dart';

  Container returnContainer (String imgPath,String title,String subtitle){
     return Container(
       margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                   child: Row(
                      
                     children: [
                       Container(
                      //   width: 50,
                         child: CircleAvatar(
                           radius: 50,
                           backgroundImage: AssetImage(imgPath),
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(left: 10),
                         child: Column(
                           
                           crossAxisAlignment: CrossAxisAlignment.start,
                           
                           children: [
                             
                             Text(title,style: TextStyle(fontSize: 16),),
                             Text(subtitle,style: TextStyle(color: Colors.grey,fontSize: 12),)
                           ],
                         ),
                       ),
                      
                     ],
                   ),
                   decoration: BoxDecoration(
                     color: Colors.grey[300],
                     shape: BoxShape.rectangle
                   ),
                  );
  }
  TextStyle TitleText(){
    return TextStyle();
  }

  Container seeAll(String title){
   return Container(child:
    Text(title,
    style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),));

                  
  }
  Container doctors(String imgPath,String name,String title,String patient){
    return Container(

      margin: EdgeInsets.only(left: 15,right: 5,bottom: 20),
      width: 120,
      height: 120,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.grey[200]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: CircleAvatar(
            backgroundImage: AssetImage(imgPath),
          ),
          
          
          ),
          Text(name),
          Text(title,style: TextStyle(fontSize: 11,color: Colors.grey),),
          Text(patient,style: TextStyle(fontSize: 10,color: Colors.grey),)
        ],
      ),
    );
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

  TextStyle simplestyle(){
    return TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600 );
  }
  Container settingContainer(String _text){
    return Container(
      
      margin: EdgeInsets.only(top: 20,left: 20,bottom: 10),
      child: Text(_text,style: simplestyle(),));


    
  }
  
//  AppBar appBarmain(BuildContext context,IconData _icon) {
//    double x=0;
//   double y=0;
//   double scales=1;
//   bool isOpenDrawer=false;
//   return 
// }
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

Container receiver(BuildContext cntxt,String img,String message,double height,double width){
  return Container(
    margin: EdgeInsets.only(left: 20,top: 30),
    child: Row(children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          child: CircleAvatar(
            
            backgroundImage: AssetImage(
              img
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            
            height: height,
            width: width,
            margin: EdgeInsets.only(left:5),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)
        
              )
            ),
            child: Center(
              child: Text(message,style: TextStyle(color: Colors.white),
              
              ),
            )),
        )
    ],),
  );
}

Container senderMessage(BuildContext cntxt,String path,String message,double width,double height){
 return Container(
    margin: EdgeInsets.only(left: 20,top: 30,right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        
         Container(
           width: width,
            height:height,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)
        
              )
            ),
            child: Center(
              child: Text(message,style: TextStyle(color: Colors.black),
              
              ),
            )),
        Container(
          margin: EdgeInsets.only(top: 30),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              path
            ),
          ),
        ),
        
    ],),
  );
}


Container listItem(String name){
  return Container(
    child: Column(
      children: [
        Row(
          children: [
          Container(
            child: Text(name),
            
            )
        ],)
      ],
    ),
  );
}
Row listofItem(String name){
  bool isSwitch=true;
  return Row(children: [
Container(
  child: Text(name),
),

  ],);
}

class checkBoximplement extends StatefulWidget {
 
  String name="";
   checkBoximplement({ Key? key ,@required name}) : super(key: key);

  @override
  _checkBoxState createState() => _checkBoxState(name);
}

class _checkBoxState extends State<checkBoximplement> {
  String name;
   bool ischecked=true;
  _checkBoxState(this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
Container(
  child:Text(name,style: TextStyle(color: Colors.black),),

),
Container(
  child:   Checkbox(value: ischecked, onChanged: (ischecked){
  
    if(ischecked==true){
  
        setState(() {
         ischecked=false;
        });
  
    }
  
    else{
        ischecked=false;
    }
  
  }),
)

  ],),
    );
  }
}

Row profileList(BuildContext context,String date,String time,String imgPath,String name,String passions,String btnTxt){
  return Row(
       
        children: [
          Container(
            width:MediaQuery.of(context).size.width*0.2 ,
            margin: EdgeInsets.only(top: 20,left: 20),
            child: Column(
              children: [
                Text(date,style: TextStyle(color: Colors.black,fontSize: 16),),
                Text(time,style: TextStyle(color: Colors.grey[300]),)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:20,left: 20,right: 10),
            width: MediaQuery.of(context).size.width*0.65,
            height: MediaQuery.of(context).size.height*0.17,
            decoration: BoxDecoration(
              color: Colors.grey[200]
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30,left: 10),
                  child: CircleAvatar(
                  backgroundImage: AssetImage(imgPath),
                )),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30,left: 15),
                      child: Text(name,style: TextStyle(color: Colors.black,fontSize: 16),)),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(passions,style: TextStyle(color: Colors.grey),)),
                      Container(
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => VisitDetail()));
                        }, child: Text(
                          btnTxt
                        )),
                      )
                  ],
                )
              ],
            ),
          )
        ],
      
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

Container editPage(String title,String subTitle,Color clr){
  return Container(
    margin: EdgeInsets.only(left: 10,right: 10,top: 25),
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(title,style: TextStyle(color: Colors.grey),),
    Text(subTitle,style: TextStyle(color: clr),)
  ],
),
  );
}