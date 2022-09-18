import 'package:flutter/material.dart';
import 'package:theming_flutter/themes/theme_constant.dart';
import 'package:theming_flutter/widgets/bottom_widget.dart';
import 'package:theming_flutter/widgets/box_container.dart';
class ResultBmi extends StatelessWidget {
  const ResultBmi({required this.resultTxt,required this.resultInterpret,required this.bmiResult}) ;
final bmiResult;
final resultTxt;
final resultInterpret;
  @override
  Widget build(BuildContext context) {
    bool toCheck = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Text('Your Result',style: kTitleTextStyle,),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: BoxContainer(
            myColor: toCheck?Colors.white10:Colors.purple[700],
            myChild:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(resultTxt,style: kSimpleTextStyle,),
                Text(bmiResult,style:kNumberStyle,),
                Text(resultInterpret,style: TextStyle(fontSize: 22,),
                textAlign: TextAlign.center,
                ),
              ],
            ) ,
          ),
        ),
        BottomButton(txt: 'RE-CALCULATE', onTap: (){
            Navigator.pop(context);
        },),
      ],
      ),
    );
  }
}
