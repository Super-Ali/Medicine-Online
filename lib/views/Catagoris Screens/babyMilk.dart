import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'coldRelief.dart';

class BabyMilk extends StatelessWidget {
  const BabyMilk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Baby Milk"),
        ),
        body: Column(children: [
          Expanded(
              child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  children: [
                productTile(
                    "bunyad",
                    "nestle bunyad",
                    "COMPANY : Nestle Nutrition\nTYPE : Powder",
                    "Boosts physical and mental growth",
                    "Fortified with Iron, Vitamin C & more",
                    "Vegetable Fat in Powdered Form",
                    "1 Pack = 26gm Powder",
                    "28.80",
                    "30",
                    "12"),
                productTile(
                    "nido",
                    "nido shield",
                    "COMPANY : Nestle Nutrition\nTYPE : Powder",
                    "Boosts immunity and provides energy",
                    "With 2x more calcium for bone metabolism",
                    "Contains zinc and iron",
                    "1 Pack = 150gm Powder",
                    "268.80",
                    "280",
                    "12"),
                productTile(
                    "lactogrow",
                    "lactogrow",
                    "COMPANY : Nestle Nutrition\nTYPE : Powder",
                    "Vit A, C, Iron, Zinc & Selenium to support normal immune system function",
                    "Protein, Vit B1, Vit B2, Folic Acid, Vit B12, Vit A to support normal physical growth",
                    "Calcium & Vitamin D to support normal Bone development",
                    "1 Pack = 200gm Powder",
                    "460",
                    "280",
                    "12"),
                productTile(
                    "lactogen",
                    "lactogen",
                    "COMPANY : Nestle Nutrition\nTYPE : Powder",
                    "Vit A, C, Iron, Zinc & Selenium to support normal immune system function",
                    "Protein, Vit B1, Vit B2, Folic Acid, Vit B12, Vit A to support normal physical growth",
                    "Calcium & Vitamin D to support normal Bone development",
                    "1 Pack = 200gm Powder",
                    "460",
                    "280",
                    "12"),
                productTile(
                    "lactogen2",
                    "lactogen 2",
                    "COMPANY : Nestle Nutrition\nTYPE : Powder",
                    "Vit A, C, Iron, Zinc & Selenium to support normal immune system function",
                    "Protein, Vit B1, Vit B2, Folic Acid, Vit B12, Vit A to support normal physical growth",
                    "Calcium & Vitamin D to support normal Bone development",
                    "1 Pack = 200gm Powder",
                    "460",
                    "280",
                    "12")
              ]))
        ]));
  }
}
