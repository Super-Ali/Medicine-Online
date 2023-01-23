import 'package:doctor_fyp/Database/Database.dart';
import 'package:doctor_fyp/views/Admin/ManageDoctors.dart';
import 'package:doctor_fyp/views/Admin/ManageUsers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({super.key});

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
          title: InkWell(
              onTap: () {
                print(doctorDatabase.read('doctorDatabase'));
              },
              child: Center(child: const Text("Admin Panel")))),
      body: Container(
          child: Column(
        children: [
          TabBar(controller: tabController, tabs: const [
            Tab(
                icon: Icon(Icons.person, color: Colors.blue),
                child: Text(
                  "Users",
                  style: TextStyle(color: Colors.blue),
                )),
            Tab(
              icon: Icon(
                Icons.medication,
                color: Colors.blue,
              ),
              child: Text(
                "Doctors",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ]),
          Expanded(
            child: Container(
              child: TabBarView(
                  controller: tabController,
                  children: [ManageUsers(), ManageDoctors()]),
            ),
          )
        ],
      )),
    );
  }
}
