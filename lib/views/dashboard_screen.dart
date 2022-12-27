import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:doctor_fyp/constant.dart/const.dart';
import 'package:doctor_fyp/model/doctosModel.dart';
import 'package:doctor_fyp/sizeConfig.dart';
import 'package:doctor_fyp/views/Catagoris%20Screens/babyMilk.dart';
import 'package:doctor_fyp/views/Catagoris%20Screens/coldRelief.dart';
import 'package:doctor_fyp/views/Message.dart';
import 'package:doctor_fyp/views/Setting.dart';
import 'package:doctor_fyp/views/doctorlist.dart';
import 'package:doctor_fyp/widgets/drawer.dart';
import 'package:doctor_fyp/widgets/notify.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoard extends StatefulWidget {
  DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        actions: [
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
            icon: Icon(Icons.apps),
            title: Text('Home'),
            activeColor: Colors.blue,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.people),
              title: Text('Users'),
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
          HomeScreen(),
          ListDoct(),
          Meassge(),
          Setting(),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: PADDING,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              height: 27 * (SizeConfig.heightMultiplier),
              // width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to,',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 2 * KPADDING,
                  ),
                  Text(
                    'Medicine Online',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(
                    height: KPADDING,
                  ),
                  Container(
                    height: 5 * (SizeConfig.heightMultiplier),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                    ),
                    // padding: PADDING,

                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2 * KPADDING,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text('Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Wrap(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(ColdRelief());
                  },
                  child: Home_page_box(
                    boxText: 'Cold Relief',
                    icon: Icons.cloud_sharp,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(BabyMilk());
                  },
                  child: Home_page_box(
                    boxText: 'Baby Milk',
                    icon: Icons.water,
                  ),
                ),
                Home_page_box(
                  boxText: 'Multivitamins',
                  icon: Icons.medical_information,
                ),
                Home_page_box(
                  boxText: 'Devices',
                  icon: Icons.access_alarm,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Top Doctors',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: PADDING,
            height: 15 * (SizeConfig.heightMultiplier),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: doct_view.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: PADDING,
                  child: Stack(
                    children: [
                      Container(
                        child: Image(
                          width: 28 * (SizeConfig.widthMultiplier),
                          image: AssetImage(doct_view[index].doc_img!),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                          bottom: 5,
                          left: 10,
                          right: 0,
                          child: Text(doct_view[index].doc_name!))
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class Home_page_box extends StatelessWidget {
  String boxText;
  IconData icon;
  VoidCallback? press;
  Home_page_box(
      {Key? key, required this.boxText, required this.icon, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.widthMultiplier * 35,
      height: SizeConfig.heightMultiplier * 20,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: press,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(icon,size: SizeConfig.heightMultiplier*6,),
            Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Text(
              boxText,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
