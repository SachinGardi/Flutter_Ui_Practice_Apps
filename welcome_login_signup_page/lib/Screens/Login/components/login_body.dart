import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_login_sinup_page/Screens/Signup/signup_screen.dart';
import 'package:welcome_login_sinup_page/components/rounded_button.dart';
import '../../../components/already_have_an_account_check.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import 'login_background.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03,),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03,),
            RoundedInputField(hintText: 'Your email',onChanged: (value) {},),
            RoundedPasswordField(onChanged: (value) {},),
            RoundedButton(text: 'LOGIN',onPress:(){},),
            SizedBox(height: size.height * 0.03,),
            AlreadyHaveAnAccountCheck(onPress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen(),));
            },)
          ],
        ),
      ),
    );
  }
}








