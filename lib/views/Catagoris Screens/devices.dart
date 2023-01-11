import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'coldRelief.dart';

class Devices extends StatelessWidget {
  const Devices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Devices"),
        ),
        body: Column(children: [
          Expanded(
              child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  children: [
                productTile(
                    "certeza",
                    "certeza",
                    "COMPANY : Nestle Nutrition\nTYPE : Powder",
                    "Boosts physical and mental growth",
                    "Fortified with Iron, Vitamin C & more",
                    "Vegetable Fat in Powdered Form",
                    "1 Pack = 26gm Powder",
                    "308",
                    "350",
                    "12"),
                productTile(
                    "easycare",
                    "easy care",
                    "COMPANY : Nestle Nutrition\nTYPE : Powder",
                    "Boosts physical and mental growth",
                    "Fortified with Iron, Vitamin C & more",
                    "Vegetable Fat in Powdered Form",
                    "1 Pack = 26gm Powder",
                    "308",
                    "350",
                    "12"),
                productTile(
                    "accucheck",
                    "accu-check",
                    "COMPANY : Nestle Nutrition\nTYPE : Powder",
                    "Boosts physical and mental growth",
                    "Fortified with Iron, Vitamin C & more",
                    "Vegetable Fat in Powdered Form",
                    "1 Pack = 26gm Powder",
                    "308",
                    "350",
                    "12")
              ]))
        ]));
  }
}
