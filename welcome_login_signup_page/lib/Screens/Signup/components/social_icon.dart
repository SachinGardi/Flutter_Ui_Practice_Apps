import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    super.key,
    required this.iconSrc,
    required this.onPress,
  });
  final String iconSrc;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
              width: 2,
              color: kPrimaryLightColor
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(iconSrc,height: 15,width: 15,),

      ),
    );
  }
}