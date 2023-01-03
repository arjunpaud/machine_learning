import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Column(children: [
            Row(children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Yoga ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 29, 82, 151),
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: "Home",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold))
              ])),
            ])
          ])),
    );
  }
}
