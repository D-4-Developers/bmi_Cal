
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  BoxContainer({this.myColor,this.myChild, Key? key}) : super(key: key);
  Color? myColor;
  Widget?myChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: myColor,
      ),
      child: myChild,
    );
  }
}

