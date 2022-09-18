import 'package:flutter/material.dart';
import 'package:theming_flutter/themes/theme_constant.dart';
class BottomButton extends StatelessWidget {
  BottomButton({required this.txt,required this.onTap});
 final Function()? onTap;
 final String txt;
  Widget build(BuildContext context) {
    bool toCheck = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      onTap:onTap,
      child: Container(
        child: Center(
            child: Text(
              txt,
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            )),
        color:toCheck?Colors.black:Colors.purple[700],
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
