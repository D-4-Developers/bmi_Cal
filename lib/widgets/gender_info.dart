import 'package:flutter/material.dart';
class GenderInfo extends StatelessWidget {
  GenderInfo({required this.genderIcon,required this.genderName,Key? key}) : super(key: key);
 IconData genderIcon;
 String genderName;
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
         genderIcon,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$genderName',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
