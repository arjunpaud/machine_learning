import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Stack extends StatefulWidget {
  const Stack({super.key});

  @override
  State<Stack> createState() => _StackState();
}

class _StackState extends State<Stack> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body:Column(children: [
    //  Stack(
    //     :<Widget> [
    //       Image.asset("images/image1.jpg",
    //     height: double.infinity,
    //         fit: BoxFit.cover,
    //       ),
    //       Positioned(child: CircleAvatar(child: CircleAvatar(radius: 20,backgroundImage: AssetImage("assets/images/picture.jpg"),),)),
    //       Positioned(
    //         top: 0.0,
    //         left: 0.0,
            
            
    //         child: FractionalTranslation(translation: Offset(0.3,-3.0),
    //         child: CircleAvatar(
    //           child: Icon(Icons.safety_check),
    //         ),
            
    //         ),
            
    //         ),
    //         CircleAvatar(child:CircleAvatar(child: Icon(Icons.star_half)) ,))
    //       ]),
  ],),
  );
  }
}