import 'package:doctor_fyp/Database/Doctors.dart';
import 'package:doctor_fyp/constant.dart/const.dart';
import 'package:doctor_fyp/widgets/CustomWidgets.dart';
import 'package:doctor_fyp/widgets/notify.dart';
import 'package:flutter/material.dart';

class messages extends StatefulWidget {
  final String name;
  final int index;

  const messages({
    super.key,
    required this.name,
    required this.index,
  });
  @override
  _messagesState createState() => _messagesState();
}

class _messagesState extends State<messages> {
//  ScrollController scrollController = ScrollController();
  TextEditingController fcontroller = TextEditingController();
  String message = '';
  void initState() {
    //  scrollController.jumpTo(scrollController.position.maxScrollExtent);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: GestureDetector(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            title: Row(
              children: [
                InkWell(
                  onTap: () {
                    print(DoctorsList[widget.index]['messages']);
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      "assets/images/doc4.png",
                    ),
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
                ),
                Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      widget.name,
                      style: simplestyle1(),
                    ))
              ],
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.call,
                    color: Colors.blue,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.dangerous_outlined,
                    color: Colors.blue,
                  ))
            ],
          ),
          body: Container(
            child: Stack(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            //   controller: scrollController,
                            itemCount:
                                DoctorsList[widget.index]['messages'].length,
                            itemBuilder: (context, index) {
                              return customerMessage(
                                  !DoctorsList[widget.index]['messages'][index]
                                      ['byMe'],
                                  DoctorsList[widget.index]['messages'][index]
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
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none),
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
                                  DoctorsList[widget.index]['messages']
                                      .add({'text': message, 'byMe': false});
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
          )),
    );
  }
}
