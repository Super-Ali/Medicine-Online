import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:doctor_fyp/Database/Doctors.dart';
import 'package:doctor_fyp/constant.dart/const.dart';
import 'package:doctor_fyp/views/Doctor/Appointments.dart';
import 'package:doctor_fyp/views/Doctor/MessageScreen.dart';
import 'package:doctor_fyp/views/Doctor/Shcedule.dart';
import 'package:doctor_fyp/views/Setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../widgets/drawer.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({super.key});

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _sIndex = 0;
  late PageController _pController;
  @override
  void initState() {
    _pController = PageController();
    currentIndex = DoctorsList.indexOf(currentUser);
    super.initState();
  }

  @override
  void dispose() {
    _pController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text(currentUser['name']),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            if (_scaffoldKey.currentState!.isDrawerOpen) {
              _scaffoldKey.currentState!.openEndDrawer();
            } else {
              _scaffoldKey.currentState!.openDrawer();
            }
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          InkWell(
            onTap: () {
              print(currentUser);
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 8),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/doctor.png"),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _sIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _sIndex = index;
          _pController.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.ease);
        }),
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.menu_book),
              title: Text('Shcedule'),
              activeColor: Colors.blue),
          BottomNavyBarItem(
              icon: Icon(Icons.chat),
              title: Text('Messages'),
              activeColor: Colors.blue),
          BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              activeColor: Colors.blue)
        ],
      ),
      body: PageView(
        controller: _pController,
        onPageChanged: (index) {
          setState(() => _sIndex = index);
        },
        children: <Widget>[Schedule(), MessageScreen(), Setting()],
      ),
    );
  }
}
