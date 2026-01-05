import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  final List<Color> colors;

  const StyledText(this.text, this.colors, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Colors.white, fontSize: 28));
  }
}
