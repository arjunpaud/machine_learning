import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/Strings.dart';

class InfoDetails extends StatefulWidget {
  const InfoDetails({super.key});

  @override
  State<InfoDetails> createState() => _InfoDetailsState();
}

class _InfoDetailsState extends State<InfoDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
      title: Text("Kundalini Yoga"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Kundalani Yoga",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 20, 20, 20),
                    )),
                SizedBox(height: 5),
                Text("Yoga for Wellbeing",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 17, 17, 17)))
              ],
            ),
            Divider(
              thickness: 2,
              color: Color.fromARGB(255, 152, 76, 175),
            ),
            Container(
              height: 325,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                      image: AssetImage("assets/images/yoga_women.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 230, 229, 229),
                        offset: Offset(5, 8)),
                    BoxShadow(
                        color: Color.fromARGB(255, 240, 239, 239),
                        offset: Offset(-5, -8))
                  ],
                  gradient: LinearGradient(colors: [
                    Colors.blue,
                    Color.fromARGB(255, 29, 82, 151),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
                  // gradient:LinearGradient(colors: [Colors.green,Colors.greenAccent])
                  ),
              child: Column(children: [
                Text(
                  Strings.paragraph,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
