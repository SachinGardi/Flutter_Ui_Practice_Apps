import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_login_sinup_page/Screens/Login/login_screen.dart';
import 'package:welcome_login_sinup_page/Screens/Signup/components/signup_background.dart';
import 'package:welcome_login_sinup_page/components/already_have_an_account_check.dart';
import 'package:welcome_login_sinup_page/components/rounded_button.dart';
import 'package:welcome_login_sinup_page/components/rounded_input_field.dart';
import 'package:welcome_login_sinup_page/components/rounded_password_field.dart';
import 'or_divider.dart';
import 'social_icon.dart';


class Body extends StatelessWidget {
  const Body({super.key,});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Background(
      child: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text('SIGNUP',style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
          const SizedBox(height: 10,),
          SvgPicture.asset('assets/icons/signup.svg',height: size.height * 0.35,),
          const SizedBox(height: 10,),
          RoundedInputField(hintText: 'Enter email', onChanged: (value) {},),
          RoundedPasswordField(onChanged: (value) {},),
          RoundedButton(onPress: () {},text: 'SIGNUP',),
          const SizedBox(height: 20,),
          AlreadyHaveAnAccountCheck(onPress: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
          },login: false,),
          const SizedBox(height: 15,),
          const OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(onPress: () {},iconSrc:'assets/icons/facebook.svg',),
              SocialIcon(onPress: () {},iconSrc:'assets/icons/google-plus.svg',),
              SocialIcon(onPress: () {},iconSrc:'assets/icons/twitter.svg',),
            ],
          )
        ],
    ),
      ),);
  }
}




