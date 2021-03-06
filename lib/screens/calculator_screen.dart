import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_calculator/controllers/calculator_controller.dart';
import 'package:getx_calculator/widgets/calc_results.dart';

import '../widgets/calculator_button.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calculatorController = Get.put(CalculatorController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetxCalculator'),
      ),
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const CalcResults(),
            const SizedBox(height: 16.0),

            ///FirstRow
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: CalcButton(
                  onPressed: () => calculatorController.cleanAll(),
                  bgColor: const Color(0xffA5A5A5),
                  text: 'AC',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () => calculatorController.changeSignedNumber(),
                  bgColor: const Color(0xffA5A5A5),
                  text: '+/-',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {
                    calculatorController.deleteLastEntry();
                  },
                  bgColor: const Color(0xffA5A5A5),
                  text: 'del',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {
                    calculatorController.setOperation('/');
                  },
                  bgColor: const Color(0xffF0A23B),
                  text: '/',
                ))
              ],
            ),

            ///SecondRow
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: CalcButton(
                  onPressed: () {
                    calculatorController.addNumber('7');
                  },
                  text: '7',
                )),
                Expanded(
                    child: CalcButton(
                      onPressed: () {
                        calculatorController.addNumber('8');
                      },
                  text: '8',
                )),
                Expanded(
                    child: CalcButton(
                      onPressed: () {
                        calculatorController.addNumber('9');
                      },
                  text: '9',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {
                    calculatorController.setOperation('x');
                  },
                  bgColor: const Color(0xffF0A23B),
                  text: 'x',
                ))
              ],
            ),

            ///Third Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: CalcButton(
                      onPressed: () {
                        calculatorController.addNumber('4');
                      },
                  text: '4',
                )),
                Expanded(
                    child: CalcButton(
                      onPressed: () {
                        calculatorController.addNumber('5');
                      },
                  text: '5',
                )),
                Expanded(
                    child: CalcButton(
                      onPressed: () {
                        calculatorController.addNumber('6');
                      },
                  text: '6',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {
                    calculatorController.setOperation('-');
                  },
                  bgColor: const Color(0xffF0A23B),
                  text: '-',
                ))
              ],
            ),

            ///Fourth Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: CalcButton(
                      onPressed: () {
                        calculatorController.addNumber('1');
                      },
                  text: '1',
                )),
                Expanded(
                    child: CalcButton(
                      onPressed: () {
                        calculatorController.addNumber('2');
                      },
                  text: '2',
                )),
                Expanded(
                    child: CalcButton(
                      onPressed: () {
                        calculatorController.addNumber('3');
                      },
                  text: '3',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {
                    calculatorController.setOperation('+');
                  },
                  bgColor: const Color(0xffF0A23B),
                  text: '+',
                ))
              ],
            ),

            ///Fifth Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 2,
                    child: CalcButton(
                      onPressed: () {
                        calculatorController.addNumber('0');
                      },
                      text: '0',
                    )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {
                    calculatorController.addDecimalPoint();
                  },
                  text: '.',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {
                    calculatorController.calculateResult();
                  },
                  bgColor: const Color(0xffF0A23B),
                  text: '=',
                ))
              ],
            ),
          ],
        ),
      )),
    );
  }
}
