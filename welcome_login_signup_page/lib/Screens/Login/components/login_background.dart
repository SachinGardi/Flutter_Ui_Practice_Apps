import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key, required this.child,});
  final Widget child;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Image.asset('assets/images/main_top.png',width: size.width * 0.35,)),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset('assets/images/login_bottom.png',width: size.width * 0.4,)),
          child
        ],
      ),
    );
  }
}