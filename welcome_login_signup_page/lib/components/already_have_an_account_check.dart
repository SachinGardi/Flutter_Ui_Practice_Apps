import 'package:flutter/material.dart';

import '../constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final  Function() onPress;
  const AlreadyHaveAnAccountCheck({
    super.key,
    this.login = true,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(login?'Dont have an Account ?':'Already have an Account',style: const TextStyle(color: kPrimaryColor),),
        GestureDetector(
            onTap: onPress,
            child: Text(login?'Sign UP':'Sign In',style: const TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold),))
      ],
    );
  }
}