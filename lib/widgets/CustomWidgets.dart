import 'package:flutter/material.dart';

customerMessage(bool byMe, String text, context) {
  if (byMe) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 30, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              padding: EdgeInsets.only(left: 10),
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(color: Colors.black),
                ),
              )),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  } else {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 30),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/doc4.png"),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.07,
                margin: const EdgeInsets.only(left: 5),
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Center(
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.white),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
