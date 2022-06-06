import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_calculator/controllers/calculator_controller.dart';

class CalcResults extends StatelessWidget {
  const CalcResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calculatorController = Get.find<CalculatorController>();
    return Obx(() => Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                calculatorController.getScreenValue(),
                style: const TextStyle(fontSize: 30.0),
              ),
            ),
            Container(
                width: double.infinity,
                height: 2,
                color: Colors.white.withOpacity(0.4),
                margin: const EdgeInsets.symmetric(vertical: 16)),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                '${calculatorController.result}',
                style: const TextStyle(fontSize: 40.0),
              ),
            ),
          ],
        ));
  }
}
