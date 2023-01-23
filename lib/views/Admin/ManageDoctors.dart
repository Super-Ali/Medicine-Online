import 'package:doctor_fyp/Database/Database.dart';
import 'package:doctor_fyp/Database/Doctors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../constant.dart/const.dart';

class ManageDoctors extends StatefulWidget {
  const ManageDoctors({super.key});

  @override
  State<ManageDoctors> createState() => _ManageDoctorsState();
}

class _ManageDoctorsState extends State<ManageDoctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: ListView.builder(
                itemCount: DoctorsList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onLongPress: () {
                      DoctorsList.removeAt(index);
                      doctorDatabase.write('doctorDatabase', DoctorsList);
                      print(DoctorsList);
                      setState(() {});
                    },
                    leading: Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/doctor.png"),
                      ),
                    ),
                    trailing: Text(DoctorsList[index]['password'].toString()),
                    title: Text(DoctorsList[index]['name'].toString()),
                    subtitle: Text(DoctorsList[index]['email'].toString()),
                  );
                })),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            addDoctor();
          },
          label: Text("ADD DOCTOR")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  addDoctor() {
    String name = '';
    String email = '';
    String password = '';
    return Get.defaultDialog(
        content: Column(
          children: [
            Container(
              padding: PADDING,
              child: TextField(
                decoration: textfield_decoration("Name", Icons.person),
                onChanged: (value) {
                  name = value;
                },
              ),
            ),
            Container(
              padding: PADDING,
              child: TextField(
                decoration: textfield_decoration("email", Icons.email),
                onChanged: (value) {
                  email = value;
                },
              ),
            ),
            Container(
              padding: PADDING,
              child: TextField(
                decoration: textfield_decoration("password", Icons.password),
                onChanged: (value) {
                  password = value;
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  DoctorsList.add({
                    'name': name,
                    'email': email,
                    'password': password,
                    'appointment': ['11 am', '12 pm', '3 pm'],
                    'messages': [
                      {'text': 'hi', 'byMe': false},
                      {'text': 'hello', 'byMe': true},
                      {'text': 'wanted a check up', 'byMe': false},
                      {'text': 'book appointment', 'byMe': true}
                    ]
                  });
                  doctorDatabase.write('doctorDatabase', DoctorsList);
                  print(DoctorsList);
                  setState(() {});
                  Get.back();
                },
                child: Text("Add Doctor"))
          ],
        ),
        title: "Add Doctor");
  }
}
