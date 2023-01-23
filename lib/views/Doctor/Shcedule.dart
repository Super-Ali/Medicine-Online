import 'package:doctor_fyp/constant.dart/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 50, left: 50),
      child: ListView.builder(
        itemCount: currentUser['appointment'].length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[300]),
                child: const Icon(
                  Icons.today,
                  color: Colors.blue,
                  size: 20,
                )),
            title: Text(currentUser['appointment'][index]),
            subtitle: Text("General Checkup"),
          );
        },
      ),
    ));
  }
}
