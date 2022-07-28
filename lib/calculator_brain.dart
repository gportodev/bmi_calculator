import 'dart:math';

class Calculator {
  Calculator({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0;

  String calculate() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  Map<String, dynamic> getResult() {
    const String category = "category";
    const String message = "message";

    if (_bmi >= 25) {
      final result = {category: 'Overweight', message: 'Exercise more!'};

      return result;
    } else if (_bmi >= 18.5) {
      final result = {category: 'Normal', message: 'Good job!'};

      return result;
    } else {
      final result = {category: 'Underweight', message: 'Eat more!'};

      return result;
    }
  }
}
