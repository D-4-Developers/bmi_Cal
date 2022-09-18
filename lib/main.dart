// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:theming_flutter/screens/result_bmi.dart';
import 'package:theming_flutter/themes/theme_color_container.dart';
import 'package:theming_flutter/themes/theme_constant.dart';
import 'package:theming_flutter/themes/theme_manager.dart';
import 'package:theming_flutter/widgets/bottom_widget.dart';
import 'package:theming_flutter/widgets/box_container.dart';
import 'package:theming_flutter/widgets/calculating_ftn.dart';
import 'package:theming_flutter/widgets/gender_info.dart';
import 'package:theming_flutter/widgets/round_icon_button.dart';

void main() {
  runApp(MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  // This is function for starting app
  initState() {
    _themeManager.addListener(themeChange);
    super.initState();
  }

  //this is for finishing
  void dispose() {
    _themeManager.removeListener(themeChange);
    super.dispose();
  }

  themeChange() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      debugShowCheckedModeBanner: false,
      home: BMIcal(),
    );
  }
}
enum GenderNames { male, female }

class BMIcal extends StatefulWidget {

  State<BMIcal> createState() => _BMIcalState();
}

class _BMIcalState extends State<BMIcal> {
  GenderNames? selectedGender;
  int height=180;
  int weight=60;
  int age=20;
  bool isPressedM=false;
  bool isPressedF=false;


  @override
  Widget build(BuildContext context) {
    bool toCheck = Theme.of(context).brightness == Brightness.dark;
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
          actions: [
            Switch(
                value: _themeManager.themeMode == ThemeMode.dark,
                onChanged: (value1) {
                  _themeManager.toggleTheme(value1);
                }),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPressedM=!isPressedM;
                          isPressedF=false;
                        });
                      },
                      child:toCheck?DarkThemeContainercolor(
                        myColor:isPressedM?darkactiveCardColor:darkinActiveCardColor,
                        myChild: GenderInfo(
                          genderName: 'MALE',
                          genderIcon: (Icons.male),
                        ),
                      ): LightThemeContainercolor(
                        myColor:isPressedM?lightactiveCardColor:lightinActiveCardColor,
                        myChild: GenderInfo(
                          genderName: 'MALE',
                          genderIcon: (Icons.male),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPressedF=!isPressedF;
                          isPressedM=false;
                        });
                      },
                      child:toCheck?DarkThemeContainercolor(
                        myColor:isPressedF?darkactiveCardColor:darkinActiveCardColor,
                        myChild: GenderInfo(
                          genderName: 'FEMALE',
                          genderIcon: (Icons.female),
                        ),
                      ): LightThemeContainercolor(
                        myColor:isPressedF?lightactiveCardColor:lightinActiveCardColor,
                        myChild: GenderInfo(
                          genderName: 'FEMALE',
                          genderIcon: (Icons.female),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: BoxContainer(
                      myChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('HEIGHT'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [Text(height.toString(),style:lableTextStyle ),
                              SizedBox(width: 3,),
                              Text('cm'),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              overlayColor: Color(0x29EB1555),
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13.0,elevation: 20.0,),
                              overlayShape: RoundSliderOverlayShape(overlayRadius: 25.0),
                            ),


                            child: Slider(value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              thumbColor:Color(0xFFEB1555),
                              onChanged:(double newValue){
                                setState(() {
                                  height=newValue.round();
                                });
                              },),
                          )
                        ],
                      ),
                      myColor: toCheck ? Colors.white10 : Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: BoxContainer(
                      myColor: toCheck ? Colors.white10 : Colors.purple,
                      myChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT'),
                          Text(weight.toString(),style: lableTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(icon: Icons.remove, onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              }),
                              SizedBox(width: 10.0,),
                              RoundIconButton(icon: Icons.add, onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              }),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: BoxContainer(
                      myColor: toCheck ? Colors.white10 : Colors.purple,
                      myChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE'),
                          Text(age.toString(),style: lableTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(icon: Icons.remove, onPressed: (){
                                setState(() {
                                  age--;
                                });
                              }),
                              SizedBox(width: 10.0,),
                              RoundIconButton(icon: Icons.add, onPressed: (){
                                setState(() {
                                  age++;
                                });
                              }),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(txt: 'CALCULATE',onTap: (){
              Calculation calc=Calculation(height: height,weight: weight);
              setState(() {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> ResultBmi(
                  bmiResult: calc.BmiCalculationFtn(),
                  resultTxt: calc.ResultBmi(),
                  resultInterpret: calc.getInterpretation(),
                ),),);
              });
            },),
          ],
        ),
      ),
    );
  }
}



