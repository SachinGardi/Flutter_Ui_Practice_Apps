import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_welcome_login_page/Screens/Signup/components/or_divider.dart';
import 'package:responsive_welcome_login_page/Screens/Signup/components/signup_form.dart';
import 'package:responsive_welcome_login_page/Screens/Signup/components/signup_screen_top_image.dart';
import 'package:responsive_welcome_login_page/Screens/Signup/components/socialIcon.dart';
import 'package:responsive_welcome_login_page/components/background.dart';
import 'package:responsive_welcome_login_page/responsive.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Background(
        child: SingleChildScrollView(
      child: Responsive(
          mobile: MobileSignupScreen(),
          desktop: DesktopSignupScreen()),
    ));
  }
}

class DesktopSignupScreen extends StatelessWidget {
  const DesktopSignupScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: SignupScreenTopImage()),

        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 450, child: SignupForm()),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(iconSrc: 'assets/icons/facebook.svg',),
                SocialIcon(iconSrc: 'assets/icons/google-plus.svg',),
                SocialIcon(iconSrc: 'assets/icons/twitter.svg',),
              ],
            )
          ],
        )),


      ],
    );
  }
}

class MobileSignupScreen extends StatelessWidget {
  const MobileSignupScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SignupScreenTopImage(),
        Row(
          children: [
            Spacer(),
            Expanded(flex: 8, child: SignupForm()),
            Spacer(),

          ],
        ),
        OrDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialIcon(iconSrc: 'assets/icons/facebook.svg',),
            SocialIcon(iconSrc: 'assets/icons/google-plus.svg',),
            SocialIcon(iconSrc: 'assets/icons/twitter.svg',),
          ],
        )

      ],
    );
  }
}
