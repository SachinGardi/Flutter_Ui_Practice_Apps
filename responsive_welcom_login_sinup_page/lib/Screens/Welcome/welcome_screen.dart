import 'package:flutter/material.dart';
import 'package:responsive_welcome_login_page/Screens/Welcome/components/welcome_image.dart';
import 'package:responsive_welcome_login_page/components/background.dart';
import 'package:responsive_welcome_login_page/responsive.dart';
import 'components/login_signup_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Background(
        child: SingleChildScrollView(
      child: SafeArea(
          child: Responsive(
              mobile: MobileWelcomeScreen(),
              desktop: WebWelcomeScreen())),
    ));
  }
}

class WebWelcomeScreen extends StatelessWidget {
  const WebWelcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(child: WelcomeImage()),
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 450,
              child: LoginAndSignupBtn(),
            )
          ],
        )
        )
      ],
    );
  }
}

class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WelcomeImage(),
        Row(
          children: [
            Spacer(),
            Expanded(flex: 8, child: LoginAndSignupBtn()),
            Spacer()
          ],
        )
      ],
    );
  }
}
