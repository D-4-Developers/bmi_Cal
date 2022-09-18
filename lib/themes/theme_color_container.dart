import 'package:flutter/widgets.dart';

class LightThemeContainercolor extends StatelessWidget {
  LightThemeContainercolor({this.myColor,this.myChild, Key? key}) : super(key: key);
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

class DarkThemeContainercolor extends StatelessWidget {
  DarkThemeContainercolor({this.myColor,this.myChild, Key? key}) : super(key: key);
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
