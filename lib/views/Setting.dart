import 'package:doctor_fyp/constant.dart/const.dart';
import 'package:doctor_fyp/widgets/NotificationSetting.dart';
import 'package:doctor_fyp/widgets/notify.dart';
import 'package:flutter/material.dart';
class Setting extends StatefulWidget {

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool isSwitch=false;
  bool isDark=false;
void toggleDark(bool _val){
  if(isDark==false){
  setState(() {
    isDark=true;
  });}
  else{
    setState(() {
      
      isDark=false;
    });
  }
}

  void toggleSwitch(bool value){
    if(isSwitch==false){
    setState(() {
      isSwitch=true;
    });
  }
  else{
    setState(() {
      isSwitch=false;
    });
  }
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child:Column(
          children:[
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*0.05,
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    child:  Container(
                      margin: EdgeInsets.only(top: 10,left: 10),
                      child: Text("Settings"))),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200]
                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10,bottom: 10,left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10,top: 10),
                            child: Text("Health tips for you",)),
                          
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 5),
                        child: Text("Get information about you health lifestyle",style: TextStyle(color: Colors.grey),))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left:50,top: 10),
                      child: Switch(value: isSwitch, onChanged:toggleSwitch)),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10,bottom: 10,left: 10),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.04,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Notification Settings",),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationSettings()));
                      }, icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,))
                    ],
                  ),
                ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*0.05,
                    decoration: BoxDecoration(
                      color: Colors.grey[200]
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 10,left: 10),
                      child: Text("General",style: TextStyle(color: Colors.black),))),
                      settingContainer("Language"),
                      settingContainer("About MedApp"),
                      settingContainer("Privacy Policy"),
                      settingContainer("Help And support"),
                      settingContainer("Rate Medapp"),
                      GestureDetector(
                        
                        child: Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              settingContainer("Dark Theme"),
                              Container(
                                child: Switch(value:isDark, onChanged:toggleDark )),
                            ],
                          ),
                        ),
                        onTap: (){
                          toggleDark(isDark);
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10,bottom: 10),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height*0.05,
                        decoration: BoxDecoration(
                          color: Colors.grey[200]
                        ),
                        child: Container(
                          margin: EdgeInsets.only(top: 10,left: 10),
                          child: Text("Accounts")),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                        height: MediaQuery.of(context).size.height*0.06,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Logout",style: TextStyle(color: Colors.blue,fontSize: 16),),
                            IconButton(onPressed: (){}, icon: Icon(Icons.login_outlined,color: Colors.blue,),)
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height*0.13,
                        decoration:BoxDecoration(
                          color: Colors.grey[200]
                        )
                      )
                ],
              ),
            )
          ]
        )
      ),
    );
  }
}