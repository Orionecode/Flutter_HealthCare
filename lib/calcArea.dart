import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight, this.age, this.waist, this.gender});

  final int height;
  final int weight;
  final int age;
  final int waist;
  final int gender;

  double _bmi;
  double _bf;

  void calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
  }

  void calculateBF() {
    if (gender == 1) {
      _bf = (waist * 0.74 - (weight * 0.082 + 34.89)) / weight * 100;
    } else
      _bf = (waist * 0.74 - (weight * 0.082 + 44.74)) / weight * 100;
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getBF() {
    return _bf.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return '体重过重';
    } else if (_bmi > 18.5) {
      return '体重正常';
    } else if (_bmi <= 18.5) {
      return '体重过轻';
    } else {
      return '体重肥胖';
    }
  }

  String getInterpretation() {
    print(_bmi);
    if (_bmi > 25) {
      return '您的体重超重了，建议适当减肥以减少疾病发生的可能性';
    } else if (_bmi > 18.5) {
      return '您的体重属于正常范围，继续锻炼保持下去';
    } else if (_bmi <= 18.5) {
      return '您的体重过轻，注意营养的摄入和休息';
    } else {
      return '您的体重处于非常危险的肥胖状态，建议您控制饮食，咨询医师的建议';
    }
  }
}
