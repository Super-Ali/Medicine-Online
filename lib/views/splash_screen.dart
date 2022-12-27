import 'dart:async';

import 'package:doctor_fyp/views/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }


  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => loginScreen()
      )
    );
  }

  initScreen(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
              child: Image.asset("assets/images/splashlogo.jpg"),
        ),
      ),
    );
  }
}