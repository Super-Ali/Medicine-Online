
import 'package:flutter/material.dart';
class NotificationSettings extends StatefulWidget {

  @override
  _NotificationSettingsState createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  bool isSwitch=true;
  bool ischecked=true;
  bool conversation=true;
  bool alerts=true;
  bool appointment=true;
  bool tips=true;
  bool reminder=true;
  bool update=true;
  void toggle_switch(bool val){
    
      setState(() {
        isSwitch= !isSwitch;
        ischecked=true;
        conversation=true;
        alerts=true;
        appointment=true;
        tips=true;
        reminder=true;
        update=true;

      });
      
    
    
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Notification Settings",style: TextStyle(color: Colors.black),),

          centerTitle: true,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,))
        ),
        body: Container(
          child: Column(
            children: [
              
              Container(
                margin: EdgeInsets.only(top: 10,left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      
                      child: Text("All notifications",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),
                    Container(child: Switch(value:isSwitch, onChanged: toggle_switch)),
                    

                ],
                ),
              ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text("Compaign messages")),
                        Checkbox(value: ischecked,onChanged:(isSwitch){
                          if(ischecked==true){
                            setState(() {
                              ischecked=false;
                            });
                          }
                          else if (ischecked==false){
                            setState(() {
                              ischecked=true;
                            });
                          }
                        }
                          )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Divider()),
                Container(
                    margin: EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("Conversational Message"),),
                        Container(
                          child: Checkbox(value: conversation, onChanged: (isSwitch){
                            setState(() {
                              if(conversation==true){
                                  conversation=false;
                              }
                              else{
                                conversation=true;
                              }
                            });
                          })
                        ,)
                    ],
                  ),),
                  Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    child: Divider()),
                   Container(
                    margin: EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("Alerts"),),
                        Container(
                          child: Checkbox(value: alerts, onChanged: (isSwitch){
                            setState(() {
                              if(alerts==true){
                                  alerts=false;
                              }
                              else{
                                alerts=true;
                              }
                            });
                          })
                        ,)
                    ],
                  ),),
                  Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    child: Divider()),

                   Container(
                    margin: EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("Appointments"),),
                        Container(
                          child: Checkbox(value: appointment, onChanged: (isSwitch){
                            setState(() {
                              if(appointment==true){
                                  appointment=false;
                              }
                              else{
                                appointment=true;
                              }
                            });
                          })
                        ,)
                    ],
                  ),),
                  Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    child: Divider()),
                   Container(
                    margin: EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("Health tips"),),
                        Container(
                          child: Checkbox(value: tips, onChanged: (isSwitch){
                            setState(() {
                              if(tips==true){
                                  tips=false;
                              }
                              else{
                                tips=true;
                              }
                            });
                          })
                        ,)
                    ],
                  ),),
                  Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    child: Divider()),
                   Container(
                    margin: EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("Reminders and records"),),
                        Container(
                          child: Checkbox(value: reminder, onChanged: (isSwitch){
                            setState(() {
                              if(reminder==true){
                                  reminder=false;
                              }
                              else{
                                reminder=true;
                              }
                            });
                          })
                        ,)
                    ],
                  ),),
                     Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    child: Divider()),
                   Container(
                    margin: EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("Update and offers"),),
                        Container(
                          child: Checkbox(value: update, onChanged: (isSwitch){
                            setState(() {
                              if(update==true){
                                  update=false;
                              }
                              else{
                                update=true;
                              }
                            });
                          })
                        ,)
                    ],
                  ),),

                    Container(
                      margin: EdgeInsets.only(left: 15,right: 15),
                      child: Divider())


                      
             
            ],
          ),
        ),
      ),
    );
  }
}