import 'package:flutter/material.dart';

import '../widgets/calculator_button.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            Container(
              alignment: Alignment.centerRight,
              child: const Text(
                '256 * 256',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Container(
                width: double.infinity,
                height: 2,
                color: Colors.white.withOpacity(0.4),
                margin: const EdgeInsets.symmetric(vertical: 16)),
            Container(
              alignment: Alignment.centerRight,
              child: const Text(
                '65536',
                style: TextStyle(fontSize: 40.0),
              ),
            ),
            const SizedBox(height: 16.0),

            ///FirstRow
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: CalcButton(
                  onPressed: () {},
                  bgColor: const Color(0xffA5A5A5),
                  text: 'AC',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {},
                  bgColor: const Color(0xffA5A5A5),
                  text: '+/-',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {},
                  bgColor: const Color(0xffA5A5A5),
                  text: 'del',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {},
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
                  onPressed: () {},
                  text: '7',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {},
                  text: '8',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {},
                  text: '9',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {},
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
                  onPressed: () {},
                  text: '4',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {},
                  text: '5',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {},
                  text: '6',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {},
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
                  onPressed: () {},
                  text: '1',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {},
                  text: '2',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {},
                  text: '3',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {},
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
                      onPressed: () {},
                      text: '0',
                    )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {},
                  text: '.',
                )),
                Expanded(
                    child: CalcButton(
                  onPressed: () {},
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