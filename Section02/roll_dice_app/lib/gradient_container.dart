import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

const Alignment startAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomLeft;

class LinearGradientContainer extends StatelessWidget {
  const LinearGradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.purpleAccent],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: StyledText()),
    );
  }
}
