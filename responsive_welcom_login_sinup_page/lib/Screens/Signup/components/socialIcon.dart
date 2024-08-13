import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_welcome_login_page/responsive.dart';

import '../../../constants.dart';

class SocialIcon extends StatelessWidget {
  final String? iconSrc;
  final Function? press;
  const SocialIcon({
    Key? key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        margin:  EdgeInsets.symmetric(horizontal: Responsive.isDesktop(context)? 10:5),
        padding:  EdgeInsets.all(Responsive.isDesktop(context)?20:10),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc!,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}