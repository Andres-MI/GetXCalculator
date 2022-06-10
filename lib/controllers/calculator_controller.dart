import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var firstNumber = "10".obs;
  var secondNumber = "10".obs;
  var operation = "x".obs;
  var digitsScreen = "10x10".obs;
  var result = "100".obs;

  String getScreenValue() {
    return '$firstNumber $operation $secondNumber';
  }

  void cleanAll() {
    firstNumber.value = '';
    secondNumber.value = '';
    operation.value = '';
    result.value = '';
  }

  addNumber(String number) {
    if (result.isEmpty || result.value == '0') {
      return result.value = number;
    } else if (result.value == '-0') {
      return result.value = '-$number';
    } else {
      //String concatenation
      result.value = '${result.value}$number';
    }
  }

  changeSignedNumber() {
    if (result.value.isNotEmpty) {
      if (result.value.startsWith('-')) {
        result.value = result.value.replaceFirst('-', '');
      } else {
        result.value = '-${result.value}';
      }
    }
  }

  addDecimalPoint() {
    if (result.value.contains('.')) return;
    if (result.value.isEmpty || result.value.startsWith('0')) {
      result.value = "0.";
    } else {
      result.value = '${result.value}.';
    }
  }

  setOperation(String newOperation) {
    operation.value = newOperation;
    firstNumber.value = (result.value.isEmpty ? '0' : result.value);
    result.value = '0';
  }

  deleteLastEntry() {
    if (result.value.replaceAll('-', '').length > 1) {
      result.value = result.value.substring(0, result.value.length - 1);
    } else {
      result.value = '0';
    }
  }

  calculateResult() {
    double num1 = double.parse(firstNumber.value);
    double num2 = double.parse(result.value);
    secondNumber.value = result.value;

    switch (operation.value) {
      case '+':
        result.value = '${num1 + num2}';
        break;
      case '-':
        result.value = '${num1 - num2}';
        break;
      case 'x':
        result.value = '${num1 * num2}';
        break;
      case '/':
        result.value = '${num1 / num2}';
        break;
    }

    if (result.value.endsWith('.0')) {
      result.value = result.value.substring(0, result.value.length - 2);
    }
  }
}
