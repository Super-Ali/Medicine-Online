import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:doctor_fyp/constant.dart/ProductLists.dart';
import 'package:doctor_fyp/constant.dart/const.dart';
import 'package:doctor_fyp/model/doctosModel.dart';
import 'package:doctor_fyp/sizeConfig.dart';
import 'package:doctor_fyp/views/Catagoris%20Screens/babyMilk.dart';
import 'package:doctor_fyp/views/Catagoris%20Screens/coldRelief.dart';
import 'package:doctor_fyp/views/Catagoris%20Screens/devices.dart';
import 'package:doctor_fyp/views/Catagoris%20Screens/multivitamins.dart';
import 'package:doctor_fyp/views/Message.dart';
import 'package:doctor_fyp/views/Setting.dart';
import 'package:doctor_fyp/views/doctorlist.dart';
import 'package:doctor_fyp/widgets/drawer.dart';
import 'package:doctor_fyp/widgets/notify.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Cart/Cart.dart';

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
          IconButton(
              onPressed: () {
                Get.to(Cart());
              },
              icon: Icon(Icons.shopping_cart)),
          Container(
              child: Center(
                  child:
                      Obx(() => Text(globalController.cartItems.toString())))),
          SizedBox(
            width: 20,
          ),
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
            icon: Icon(Icons.shopping_cart),
            title: Text('Products'),
            activeColor: Colors.blue,
          ),
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
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                          ),
                          onChanged: (value) {
                            if (value == "") {
                              globalController.searchStarted.value = false;
                              globalController.seachText.value = "";
                            }

                            globalController.seachText.value = value;
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: ElevatedButton.icon(
                        onPressed: () {
                          if (globalController.seachText.value != "") {
                            globalController.searchStarted.value = true;
                          }
                        },
                        icon: Icon(Icons.search),
                        label: Text("Search")),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(
              () => Container(
                child: globalController.searchStarted.value
                    ? Container(
                        height: 500,
                        child: ListView.builder(
                            itemCount: allItems.length,
                            itemBuilder: (context, index) {
                              if (globalController.seachText.value ==
                                  allItems[index][1]) {
                                return Container(
                                  child: productTile(
                                      allItems[index][0],
                                      allItems[index][1],
                                      allItems[index][2],
                                      allItems[index][3],
                                      allItems[index][4],
                                      allItems[index][5],
                                      allItems[index][6],
                                      allItems[index][7],
                                      allItems[index][8],
                                      allItems[index][9]),
                                );
                              } else if (globalController.seachText.value !=
                                  allItems[index]) {
                                return Container();
                              } else
                                return Text("not found");
                            }),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text('Categories',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                          ),
                          const SizedBox(
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
                                    icon: "coldrelief",
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(BabyMilk());
                                  },
                                  child: Home_page_box(
                                    boxText: 'Baby Milk',
                                    icon: "babymilk",
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(const Multivitamins());
                                  },
                                  child: Home_page_box(
                                    boxText: 'Multivitamins',
                                    icon: "multivitamin",
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(const Devices());
                                  },
                                  child: Home_page_box(
                                    boxText: 'Devices',
                                    icon: "devices",
                                  ),
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
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
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
                                          width:
                                              28 * (SizeConfig.widthMultiplier),
                                          image: AssetImage(
                                              doct_view[index].doc_img!),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Positioned(
                                          bottom: 5,
                                          left: 10,
                                          right: 0,
                                          child:
                                              Text(doct_view[index].doc_name!))
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class Home_page_box extends StatelessWidget {
  String boxText;
  String icon;
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
            Image.asset("assets/${icon}.png"),
            SizedBox(height: 1),
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
