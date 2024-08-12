import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    this.text,
    this.textColor = Colors.white,
    required this.onPress,
    this.color = kPrimaryColor,
  });

  final String? text;
  final Color color,textColor;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: const StadiumBorder(),
              minimumSize: Size(size.width * 0.8, 45)),
          onPressed:onPress,
          child: Text(
            text!,
            style: TextStyle(color: textColor),
          )),
    );
  }
}