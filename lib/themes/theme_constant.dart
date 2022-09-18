
import 'package:flutter/material.dart';
const lightactiveCardColor = Colors.purpleAccent;
const lightinActiveCardColor = Colors.purple;

//for dark
const darkactiveCardColor = Colors.black54;
const darkinActiveCardColor = Colors.white10;
const kBottomContainerColor=Colors.red;
const kBottomContainerHeight=60.0;

const lableTextStyle=TextStyle(
  fontSize: 50,fontWeight: FontWeight.w900,);
const kTitleTextStyle=TextStyle(
  fontSize: 50.0,fontWeight: FontWeight.bold,);
const kSimpleTextStyle=TextStyle(
    fontSize: 22.0,color:Colors.lightGreen);
const kNumberStyle=TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 100.0,
);


///TODO LIGHT THEME DATA
//here we have the properties applied on light theme screen...
//this will be apply on all screens because these are constants..
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  backgroundColor: Colors.lightGreenAccent,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.purple[700],
  ),
  switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.all<Color>(Colors.greenAccent),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(
        Colors.white,
      ),
    ),
  ),
);

///TODO DARK THEME DATA
//here we have the properties applied on Dark theme screen...
ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor:Color(0xFF0A0E21),
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black,
  ),
  switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.all<Color>(Colors.white54),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(
        Colors.white,
      ),
    ),
  ),
);
