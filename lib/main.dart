import 'package:doctor_fyp/Controllers/GlobalController.dart';
import 'package:doctor_fyp/Database/Database.dart';
import 'package:doctor_fyp/Database/Doctors.dart';
import 'package:doctor_fyp/Database/Users.dart';
import 'package:doctor_fyp/sizeConfig.dart';
import 'package:doctor_fyp/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  await GetStorage.init('userDatabase');
  await GetStorage.init('doctorDatabase');
  Get.put(GlobalController());
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    if (userDatabase.read('userDatabase') == null) {
    } else {
      UsersList = userDatabase.read('userDatabase');
    }
    if (doctorDatabase.read('doctorDatabase') == null) {
    } else {
      DoctorsList = doctorDatabase.read('doctorDatabase');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Poultry Farm',
              theme: ThemeData(primarySwatch: Colors.blue),
              home: SplashScreen(),
              // home: DashBoardScreen(),
            );
          },
        );
      },
    );
  }
}
