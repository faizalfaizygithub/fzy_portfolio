import 'package:flutter/material.dart';
import 'package:fzy_portfolio/components/my_text.dart';

class Buttons extends StatelessWidget {
  String text;
  Function() action;
  Color color;
  Buttons({required this.text, required this.action, required this.color});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(Size(150, 45)),
        backgroundColor: MaterialStatePropertyAll(color),
      ),
      onPressed: action,
      child: Text(text, style: buttonStyle),
    );
  }
}
