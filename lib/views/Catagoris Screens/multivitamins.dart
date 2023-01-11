import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'coldRelief.dart';

class Multivitamins extends StatelessWidget {
  const Multivitamins({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Multi-Vitamins"),
        ),
        body: Column(children: [
          Expanded(
              child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  children: [
                productTile(
                    "c-vitan",
                    "c-vitan",
                    "COMPANYACE-Biotics\nTYPE : tablet",
                    "Boosts physical and mental growth",
                    "Fortified with Iron, Vitamin C & more",
                    "Vegetable Fat in Powdered Form",
                    "1 Pack = 30 Tablet",
                    "150",
                    "30",
                    "12"),
                productTile(
                    "bevidox",
                    "bevidox",
                    "COMPANYACE-Biotics\nTYPE : tablet",
                    "Boosts physical and mental growth",
                    "Fortified with Iron, Vitamin C & more",
                    "Vegetable Fat in Powdered Form",
                    "1 Pack = 30 Tablet",
                    "150",
                    "30",
                    "12"),
                productTile(
                    "cal",
                    "calcium",
                    "COMPANYACE-Biotics\nTYPE : tablet",
                    "Boosts physical and mental growth",
                    "Fortified with Iron, Vitamin C & more",
                    "Vegetable Fat in Powdered Form",
                    "1 Pack = 30 Tablet",
                    "150",
                    "30",
                    "12"),
              ]))
        ]));
  }
}
