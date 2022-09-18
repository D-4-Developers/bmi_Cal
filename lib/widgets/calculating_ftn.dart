import 'dart:math';
class Calculation{
  Calculation({ this.weight, this.height,});
  final height;
  final weight;
  double? _bmi;
  String? BmiCalculationFtn(){
     _bmi=weight/pow(height/100, 2);
    return  _bmi!.toStringAsFixed(1);
  }
  String ResultBmi(){
    if(_bmi! > 25.0){
      return 'OverWeight';
    }
    else if(_bmi! >= 18.0 ){
      return'Normal';
    }
    else{
      return 'UnderWeight';
    }
  }
String getInterpretation(){
  if(_bmi! > 25.0){
    return 'You have gain more weight, focus on your exercise';
  }
  else if(_bmi! > 18.0 ){
    return'Your body health is Normal, Keep it up';
  }
  else{
    return 'You have low body weight and unHealthy, eat more';
  }
}
}