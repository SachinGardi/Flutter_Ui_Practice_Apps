import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    super.key,
    required this.child,
     this.topImage = 'assets/images/main_top.png',
     this.bottomImage = 'assets/images/login_bottom.png'
  });

  final String topImage,bottomImage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
                left: 0,
                child: Image.asset(topImage,width: 100,),
            ),
            Positioned(
              bottom: 0,
                right: 0,
                child: Image.asset(bottomImage,width: 100,)
            ),
            SafeArea(child: child)
          ],
        ),
      ),
    );
  }
}
