import 'dart:math';
class CalculatorBrain{
  CalculatorBrain({required this.weight,required this.height});

  final int height;
  final int weight;

  late double _bmi = 0;

  String calculateBMI(){
    _bmi = weight / pow(height / 100 , 2);//take height in cm,
    return _bmi.toStringAsFixed(1);//only one digit after bmi
  }
  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'You have a higher tha normal body weight. Try to exercise more.';
    }else if(_bmi >18.5){
      return 'You have a normal body weight . Try to maintain it';
    }else{
      return 'You have less than the normal body weight. You can eat little bit more';
    }
  }
}
