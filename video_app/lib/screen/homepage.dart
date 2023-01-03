import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:video_app/screen/custom_appbar.dart';
import 'package:video_app/screen/info_page.dart';
import 'package:video_app/screen/play_video.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List yogaCard = [];

  void _initData() {
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      yogaCard = jsonDecode(value);
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  String url = "https://www.youtube.com/watch?v=dAqQqmaI9vY";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(),
        actions: [
          Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
          SizedBox(width: 7),
          Icon(
            Icons.calendar_today_outlined,
            size: 20,
            color: Colors.black,
          ),
          SizedBox(width: 11),
          Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: Colors.black,
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0.5,
        
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, right: 20, left: 20),
        child: Column(children: [
          Row(
            children: [
              Text(
                "Your Program",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Text(
                "Details",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                size: 14,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          // Main Container
          InkWell(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => PlayVideo(url)),
                ),
              );
            }),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/yoga_women2.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(50)),
                // gradient: LinearGradient(colors: [
                //   Color.fromARGB(210, 40, 228, 71),
                //   Color.fromARGB(255, 20, 226, 147),
                // ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
              ),
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 25, right: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(" Our Jounery",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(
                        "Way to Wellbeing",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Text("Kundalani",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      SizedBox(height: 40),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.timer_outlined,
                                size: 16,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "60 min",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 15,
                                      offset: (Offset(3, 4)))
                                ],
                              ),
                              child: Icon(
                                Icons.play_circle_fill,
                                size: 50,
                                color: Colors.white,
                              ))
                        ],
                      )
                    ]),
              ),
            ),
          ),
          SizedBox(height: 25),
          Stack(
            children: [
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/picture.jpg"),
                    fit: BoxFit.fill,
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.9),
                        offset: Offset(-1, -1)),
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.9),
                      offset: Offset(1, 1),
                      spreadRadius: 1,
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                width: double.maxFinite,
                // color: Colors.red.shade100,
                margin: EdgeInsets.only(
                  right: 110,
                  left: 60,
                  top: 20,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, right: 40),
                  child: Column(
                    children: [
                      Text(
                        "Yoga for better life",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 71, 3, 3)),
                      ),
                      Text(
                        "and Wellbeing",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 56, 1, 1)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10),

          Align(
            alignment: Alignment.centerLeft,
            child: Text("Choose your Yoga",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.black)),
          ),
          Expanded(
            child: OverflowBox(
              maxWidth: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: (yogaCard.length.toDouble() / 2).toInt(),
                  itemBuilder: ((context, index) {
                    int a = index * 2; // 0, 2,
                    int b = index * 2 + 1; //1,3,
                    double width = (MediaQuery.of(context).size.width - 90) / 2;
                    return Row(
                      children: [
                        Column(
                          children: [
                            InkWell(
                              onTap: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => InfoDetails()));
                              }),
                              child: Container(
                                padding: EdgeInsets.only(bottom: 20),
                                margin: EdgeInsets.all(20),
                                height: 180,
                                width: width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(yogaCard[a]["img"]),
                                      fit: BoxFit.cover,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 10,
                                        color: Color.fromARGB(193, 46, 45, 45),
                                        offset: Offset(5, 8),
                                      ),
                                      BoxShadow(
                                        blurRadius: 10,
                                        color:
                                            Color.fromARGB(193, 189, 189, 189),
                                        offset: Offset(-5, -8),
                                      )
                                    ]),
                              ),
                            ),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  yogaCard[a]["title"],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                )),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => InfoDetails())));
                              },
                              child: Container(
                                padding: EdgeInsets.only(bottom: 20),
                                margin: EdgeInsets.all(20),
                                height: 180,
                                width: width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(yogaCard[b]["img"]),
                                      fit: BoxFit.cover,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 10,
                                        color: Color.fromARGB(193, 46, 45, 45),
                                        offset: Offset(5, 8),
                                      ),
                                      BoxShadow(
                                        blurRadius: 10,
                                        color:
                                            Color.fromARGB(193, 189, 189, 189),
                                        offset: Offset(-5, -8),
                                      ),
                                    ]),
                              ),
                            ),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  yogaCard[b]["title"],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                )),
                          ],
                        ),
                        SizedBox(height: 30),
                      ],
                    );
                  })),
            ),
          )
        ]),
      ),
    );
  }
}
