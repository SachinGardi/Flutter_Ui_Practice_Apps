import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_login_sinup_page/Screens/Login/login_screen.dart';
import 'package:welcome_login_sinup_page/constants.dart';
import '../../../components/rounded_button.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'WELCOME TO EDU',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05,),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              width: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05,),
             RoundedButton(text: 'LOGIN',onPress: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
             },),
             RoundedButton(text: 'SIGNUP',onPress: (){},color: kPrimaryLightColor,textColor: Colors.black,),
          ],
        ),
      ),
    );
  }
}


