import 'dart:math';

class BMICalculator {
  final double height;
  final double weight;
  BMICalculator({this.height, this.weight});

  ///returns [double BMI, String result, String advice] as an array
  List calculateBMI() {
    double bmi = weight / pow(height / 100, 2);
    String result, advice;
    if (bmi <= 18.5) {
      result = 'Underweight';
      advice = 'You have a lower than normal body weight. Try to eat more.';
    } else if (bmi >= 25) {
      result = 'Overweight';
      advice =
          'You have a higher than normal body weight. Try to exercise more.';
    } else {
      result = 'Normal';
      advice = 'You have a normal body weight.\nGood job!';
    }
    return [bmi, result, advice];
  }
}
