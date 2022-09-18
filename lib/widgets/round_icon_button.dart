
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundIconButton extends StatelessWidget {

  RoundIconButton({required this.icon,required this.onPressed,Key? key});
  final IconData icon;
 final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    bool toCheck = Theme.of(context).brightness == Brightness.dark;
    return RawMaterialButton(onPressed:onPressed,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      elevation: 15.0,
      fillColor:toCheck?Color(0xFF0A0E21):Colors.purple[700],
    );

  }
}