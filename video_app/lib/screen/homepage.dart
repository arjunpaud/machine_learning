import 'dart:convert';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _initData() {
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      yogaCard = jsonDecode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  List yogaCard = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20, right: 20, left: 20),
        child: Column(children: [
          Row(
            children: [
              Text(
                "Yoga Home",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              Expanded(
                child: Container(),
              ),
              Icon(
                Icons.arrow_back_ios,
                size: 20,
              ),
              SizedBox(width: 7),
              Icon(
                Icons.calendar_today_outlined,
                size: 20,
              ),
              SizedBox(width: 11),
              Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ],
          ),
          SizedBox(height: 10),
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(50)),
              gradient: LinearGradient(colors: [
                Color.fromARGB(210, 40, 228, 71),
                Color.fromARGB(255, 20, 226, 147),
              ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
            ),
            width: MediaQuery.of(context).size.width,
            height: 220,
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 25, right: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Next Workout",
                        style: TextStyle(
                          fontSize: 16,
                        )),
                    Text(
                      "Legs Toning",
                      style: TextStyle(fontSize: 25),
                    ),
                    Text("and Glutes Workout", style: TextStyle(fontSize: 25)),
                    SizedBox(height: 40),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              size: 16,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "60 min",
                              style: TextStyle(fontSize: 16),
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
                height: 80,
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
                        "Your are Curishing",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 71, 3, 3)),
                      ),
                      Text(
                        "Keep Doing",
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
                            Container(
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
                                      color: Color.fromARGB(193, 189, 189, 189),
                                      offset: Offset(-5, -8),
                                    )
                                  ]),
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
                            Container(
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
                                      color: Color.fromARGB(193, 189, 189, 189),
                                      offset: Offset(-5, -8),
                                    ),
                                  ]),
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
