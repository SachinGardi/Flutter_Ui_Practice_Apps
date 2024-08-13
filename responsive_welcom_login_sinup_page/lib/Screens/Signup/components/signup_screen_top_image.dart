import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class SignupScreenTopImage extends StatelessWidget {
  const SignupScreenTopImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('SIGNUP',style: TextStyle(
            fontWeight: FontWeight.bold
        ),),
        const SizedBox(height: defaultPadding * 2,),
        Row(
          children: [
            const Spacer(),
            Expanded(
                flex: 8,
                child: SvgPicture.asset('assets/icons/signup.svg')),
            const Spacer(),
          ],
        ),
        const SizedBox(height: defaultPadding * 2,)
      ],
    );
  }
}
