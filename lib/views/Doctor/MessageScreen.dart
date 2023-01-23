import 'package:doctor_fyp/Database/Doctors.dart';
import 'package:doctor_fyp/constant.dart/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/CustomWidgets.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
//  ScrollController scrollController = ScrollController();
  TextEditingController fcontroller = TextEditingController();
  String message = '';

  @override
  void initState() {
    //  scrollController.jumpTo(scrollController.position.maxScrollExtent);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        //   controller: scrollController,
                        itemCount: DoctorsList[currentIndex]['messages'].length,
                        itemBuilder: (context, index) {
                          return customerMessage(
                              !DoctorsList[currentIndex]['messages'][index]
                                  ['byMe'],
                              DoctorsList[currentIndex]['messages'][index]
                                  ['text'],
                              context);
                        },
                      ),
                    ),
                    SizedBox(height: 50)
                  ],
                )),
            Positioned(
              bottom: 0,
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.file_present,
                              color: Colors.blue,
                            ))),
                    Container(
                        margin: EdgeInsets.only(left: 5),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt_sharp,
                              color: Colors.blue,
                            ))),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: MediaQuery.of(context).size.width * 0.07,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: TextField(
                        controller: fcontroller,
                        decoration: InputDecoration(
                            hintText: "Enter message",
                            contentPadding:
                                EdgeInsets.only(top: 5, bottom: 5, left: 5),
                            isDense: true,
                            filled: true,
                            fillColor: Colors.grey[300],
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            )),
                        onChanged: (value) {
                          message = value;
                        },
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 5),
                        child: IconButton(
                            onPressed: () {
                              FocusManager.instance.primaryFocus?.unfocus();
                              fcontroller.clear();
                              //  scrollController.jumpTo(scrollController.position.maxScrollExtent);
                              DoctorsList[currentIndex]['messages']
                                  .add({'text': message, 'byMe': true});
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.send,
                              color: Colors.blue,
                            ))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
