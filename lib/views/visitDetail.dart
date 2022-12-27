import 'package:doctor_fyp/constant.dart/const.dart';
import 'package:doctor_fyp/views/examination.dart';
import 'package:flutter/material.dart';

class VisitDetail extends StatefulWidget {
  const VisitDetail({Key? key}) : super(key: key);

  @override
  _VisitDetailState createState() => _VisitDetailState();
}

class _VisitDetailState extends State<VisitDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Visit Detail",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 15,
          right: 15,
        ),
        // height: MediaQuery.of(context).size.height,
        // color: Colors.blue,
        child: Column(
          children: [
            Container(
              color: Colors.grey[200],
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 25),
                      child: ListTile(
                        subtitle: Text("Family Doctor , Cardiologist"),
                        leading: Container(
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage("assets/images/doc4.png"),
                          ),
                        ),
                        title: Text(
                          "Tawfeeq Bahri",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 20),
                    child: ListTile(
                      leading: Icon(Icons.calendar_today),
                      title: Text(
                        "Thu 17:00 - 14 February 2019",
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text(
                        "Alharam city Sadiq Abad",
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Text(
                    "Diagnosis",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )),
                  Container(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_drop_up_outlined,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 5, left: 15, right: 20),
              child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                      text:
                          "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
                      style: TextStyle(color: Colors.black))),
            ),
            // examination(context, imgPath, title, date, btnTxt)
            Container(
              child: examination(context, "assets/images/sta.jfif",
                  "Physical Examination", "14/02/2019", "see_reports ->"),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Text(
                    "Recommendation",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )),
                  Container(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_drop_up_outlined,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 5, left: 15, right: 20),
              child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                      text:
                          "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
                      style: TextStyle(color: Colors.black))),
            ),
          ],
        ),
      ),
    );
  }
}
