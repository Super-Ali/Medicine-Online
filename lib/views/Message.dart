import 'package:doctor_fyp/Database/Doctors.dart';
import 'package:doctor_fyp/constant.dart/const.dart';
import 'package:doctor_fyp/views/doccotrsMessage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Meassge extends StatefulWidget {
  const Meassge({Key? key}) : super(key: key);

  @override
  _MeassgeState createState() => _MeassgeState();
}

class _MeassgeState extends State<Meassge> {
  final _color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Padding(
              padding: const EdgeInsets.only(left: 0),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
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
                    )),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: DoctorsList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.to(messages(
                    name: DoctorsList[index]['name'],
                    index: DoctorsList.indexOf(DoctorsList[index]),
                  ));
                },
                child: messageList(
                    context,
                    "assets/images/doc4.png",
                    DoctorsList[index]['name'].toString(),
                    DoctorsList[index]['messages']
                        [DoctorsList[index]['messages'].length - 1]['text'],
                    DoctorsList[index]['appointment'][0].toString(),
                    messages: DoctorsList[index]['messages'].length),
              );
            },
          ))
        ],
      ),
    );
  }
}
