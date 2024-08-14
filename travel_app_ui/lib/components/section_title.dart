import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_confi.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    required this.press,
  });
  final String title;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(kDefaultPadding)),
      child:  Row(
        children: [
          Text(title,style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),),
          const Spacer(),
          GestureDetector(
              onTap: press,
              child: const Text('See All'))
        ],
      ),
    );
  }
}