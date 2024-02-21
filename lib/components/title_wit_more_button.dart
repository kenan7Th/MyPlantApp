import 'package:flutter/material.dart';
import 'package:plantapp/components/body.dart';
import 'package:plantapp/constatnts.dart';

class TitleWithMoreButton extends StatelessWidget {
  TitleWithMoreButton({required this.title, required this.press});
  final String title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KDefalutPadding),
      child: Row(
        children: [
          TitleWithCustomUnderLine(mytext: 'Recommended'),
          Spacer(),
          RoundIconButton(icon: Icons.add_box)
        ],
      ),
    );
  }
}
