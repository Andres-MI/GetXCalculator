import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var firstNumber = "10".obs;
  var secondNumber = "10".obs;
  var operation = "x".obs;
  var digitsScreen = "10x10".obs;
  var result = "100".obs;

  String getScreenValue(){
    return '$firstNumber $operation $secondNumber';
  }

  void cleanAll() {
    firstNumber.value = '';
    secondNumber.value = '';
    operation.value = '';
    result.value = '';
  }
}
