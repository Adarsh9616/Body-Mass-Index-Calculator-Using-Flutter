import 'dart:math';

class Brain {
  final int height;
  final int weight;
  double _ans;
  Brain({this.weight, this.height});
  String calculate() {
    _ans = weight / pow(height / 100, 2);
    return _ans.toStringAsFixed(1);
  }

  String response1() {
    if (_ans >= 25) {
      return 'Overweight';
    } else if (_ans >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String response2() {
    if (_ans >= 25) {
      return 'You need to work out';
    } else if (_ans >= 18.5) {
      return 'Great!';
    } else {
      return 'You need to gain mass. Start eating';
    }
  }
}
