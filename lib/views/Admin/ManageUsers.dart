import 'package:doctor_fyp/Database/Database.dart';
import 'package:doctor_fyp/Database/Users.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../constant.dart/const.dart';

class ManageUsers extends StatefulWidget {
  const ManageUsers({super.key});

  @override
  State<ManageUsers> createState() => _ManageUsersState();
}

class _ManageUsersState extends State<ManageUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView.builder(
              itemCount: UsersList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onLongPress: () {
                    UsersList.removeAt(index);
                    userDatabase.write('userDatabase', UsersList);
                    setState(() {});
                  },
                  leading: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                      )),
                  trailing: Text(UsersList[index]['password'].toString()),
                  title: Text(UsersList[index]['name'].toString()),
                  subtitle: Text(UsersList[index]['email'].toString()),
                );
              })),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            addUser();
          },
          label: Text("ADD USER")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  addUser() {
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
                  UsersList.add({
                    'name': name,
                    'email': email,
                    'password': password,
                    'appointment': 'Dr.Liza',
                    'messages': ['hi', '$name here', 'want to get a checkup']
                  });

                  setState(() {});
                  userDatabase.write('userDatabase', UsersList);
                  print(userDatabase.read('userDatabase'));
                  Get.back();
                },
                child: Text("Add User"))
          ],
        ),
        title: "Add User");
  }
}
