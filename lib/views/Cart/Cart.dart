import 'package:doctor_fyp/constant.dart/ProductLists.dart';
import 'package:doctor_fyp/constant.dart/const.dart';
import 'package:doctor_fyp/views/Catagoris%20Screens/coldRelief.dart';
import 'package:doctor_fyp/views/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  const Cart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shopping Cart")),
      body: Container(
        child: cartItems.isEmpty
            ? Center(
                child: Text("Shopping Cart is Empty"),
              )
            : ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) => Container(
                      child: ListTile(
                        title: Text(cartItems[index]),
                        leading: Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        ),
                      ),
                    )),
      ),
      floatingActionButton: cartItems.isEmpty
          ? null
          : FloatingActionButton.extended(
              onPressed: () {
                Get.defaultDialog(
                    content: Icon(
                      Icons.check_rounded,
                      color: Colors.green,
                      size: 30,
                    ),
                    title: "Your Order has been Placed");
                Future.delayed(Duration(seconds: 3), () {
                  Get.offAll(DashBoard());
                });
                globalController.cartItems.value = 0;
                cartItems.clear();
              },
              backgroundColor: Colors.green,
              label: Row(
                children: [
                  Icon(Icons.shopping_cart_checkout),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Purchase")
                ],
              ),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
