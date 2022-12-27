import 'package:doctor_fyp/sizeConfig.dart';
import 'package:doctor_fyp/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
