import 'dart:math';
// BMI = mass(kg)/height(m^2) or mass(lb)/height(in^2) * 703

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You weight is higher than normal. You may benefit from a more sensible diet and regular exercise.';
    } else if (_bmi > 18.5) {
      return 'Your weight is normal. Continue to work out and eat good.';
    } else {
      return 'Your weight lower than normal. You should eat more and workout.';
    }
  }
}
