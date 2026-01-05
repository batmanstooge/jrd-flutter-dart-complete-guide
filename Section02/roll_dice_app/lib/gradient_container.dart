import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

const Alignment startAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomLeft;

class LinearGradientContainer extends StatelessWidget {
  final List<Color> colors;
  final String text;
  const LinearGradientContainer(this.colors, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: StyledText(text, colors)),
    );
  }
}
