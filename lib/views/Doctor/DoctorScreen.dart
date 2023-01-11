import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../constant.dart/const.dart';
import '../../widgets/drawer.dart';
import '../Cart/Cart.dart';
import '../Message.dart';
import '../Setting.dart';
import '../dashboard_screen.dart';
import '../doctorlist.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({super.key});

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    int _selectedIndex = 0;
    PageController _pageController = PageController();

    @override
    void dispose() {
      _pageController.dispose();
      super.dispose();
    }

    return Scaffold(
      key: _scaffoldKey,
      drawer: new DrawerWidget(),
      appBar: AppBar(
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/doctor.png"),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.ease);
        }),
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.people),
              title: Text('Appointments'),
              activeColor: Colors.blue),
          BottomNavyBarItem(
              icon: Icon(Icons.message),
              title: Text('Messages'),
              activeColor: Colors.blue),
          BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              activeColor: Colors.blue),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _selectedIndex = index);
        },
        children: <Widget>[
          ListDoct(),
          Meassge(),
          Setting(),
        ],
      ),
    );
  }
}
