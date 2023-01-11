import 'package:doctor_fyp/views/Doctor/DoctorScreen.dart';
import 'package:doctor_fyp/views/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ChooseProfession extends StatelessWidget {
  const ChooseProfession({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 129, 173, 250),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Are you a Customer or a Doctor ?",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    child: FloatingActionButton.large(
                      onPressed: () {
                        Get.off(DoctorScreen());
                      },
                      child: const Icon(
                        Icons.medication,
                        size: 60,
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    child: FloatingActionButton.large(
                      onPressed: () {
                        Get.off(DashBoard());
                      },
                      child: const Icon(
                        Icons.person,
                        size: 60,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80, right: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Doctor",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      "Customer",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
