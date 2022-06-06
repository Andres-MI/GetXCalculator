import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final Color? bgColor;
  final String text;
  final Function() onPressed;

  const CalcButton(
      {Key? key,
        required this.text,
        required this.onPressed,
        this.bgColor = const Color(0xFF333333)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      child: ElevatedButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              shape: const StadiumBorder(), backgroundColor: bgColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              text,
              style: const TextStyle(fontSize: 25),
            ),
          )),
    );
  }
}