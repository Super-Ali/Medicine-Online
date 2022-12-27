import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ColdRelief extends StatelessWidget {
  const ColdRelief({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //    backgroundColor: Color.fromARGB(255, 197, 225, 248),
      appBar: AppBar(
        title: Text("Cold Relief"),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              productTile(
                  "joshanda",
                  "Hashmi Joshanda Sachet 1 'S",
                  "COMPANY : Hashmi\nTYPE : Sachet",
                  "Contains 12 efficacious herbs",
                  "Effective for all-seasons",
                  "Eases illness",
                  "1 Pack = 1 Sachet",
                  "8.80",
                  "10",
                  "12"),
              productTile(
                  "joharJoshanda",
                  "Johar Joshanda Sugar Free Sachet 1 'S",
                  "COMPANY : Qarshi\nTYPE : Sachet",
                  "Contains 12 efficacious herbs",
                  "Effective for all-seasons",
                  "Eases illness",
                  "1 Pack = 1 Sachet",
                  "8.80",
                  "10",
                  "12"),
              productTile(
                  "surficol",
                  "Surficol Plus Syrup 120 ml",
                  "COMPANY : Qarshi\nTYPE : Syrup",
                  "Herbal and natural medicine",
                  "Effective against cough, cold, bronchitis and catarrh",
                  "Suitable to use for relief against sore throat, irritation of throat and congestion",
                  "1 Pack = 120ml Syrup",
                  "96.80",
                  "110",
                  "12"),
              productTile(
                  "laooq",
                  "Laooq Sapistan Powder 100 gm",
                  "COMPANY : Hamdard\nTYPE : Powder",
                  "Provides relief from flu and cough",
                  "Alleviates the symptoms by decreasing mucus secretion and intensity of cough",
                  "Made from extracts of herbal ingredients",
                  "1 Pack = 100gm Powder",
                  "110.40",
                  "120",
                  "8"),
              productTile(
                  "vix",
                  "Vicks Balm 19 gm",
                  "COMPANY : Procter & Gamble\nTYPE : Balm",
                  "Vaporising cold medicine",
                  "Provides effective relief from blocked nose, cough & cold like symptoms",
                  "Can be used by rubbing it on the affected area or inhalation",
                  "1 Pack = 19gm Balm",
                  "54.28",
                  "59",
                  "8")
            ],
          ))
        ],
      ),
    );
  }
}

productTile(image, name, desc, point1, point2, point3, belowCart, price,
    oldPrice, discount) {
  return Card(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Image.asset("assets/productImages/$image.png"),
        const SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          desc,
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          " ⦁	$point1",
          style: TextStyle(fontSize: 15),
        ),
        Text(
          " ⦁ $point2",
          style: TextStyle(fontSize: 15),
        ),
        Text(
          " ⦁	$point3",
          style: TextStyle(fontSize: 15),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(10)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.shopping_cart),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Add to Cart"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  belowCart,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            )),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Rs $price",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              " Rs. $oldPrice",
              style: TextStyle(decoration: TextDecoration.lineThrough),
            ),
          ],
        ),
        Text(
          "$discount% Off",
          style: TextStyle(fontSize: 15),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    ),
  );
}
