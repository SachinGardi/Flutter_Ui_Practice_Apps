import 'package:flutter/material.dart';

class PhysicsSplashScreen extends StatefulWidget {
  @override
  _PhysicsSplashScreenState createState() => _PhysicsSplashScreenState();
}

class _PhysicsSplashScreenState extends State<PhysicsSplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    // Set up the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    // Create a physics-based animation (SpringSimulation)
    _animation = _controller.drive(
      CurveTween(curve: Curves.bounceOut), // You can replace this with custom physics
    );

    _controller.forward(); // Start the animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, (1 - _animation.value) * -MediaQuery.of(context).size.height),
              child: child,
            );
          },
          child: const FlutterLogo(
            size: 150,
          ),
        ),
      ),
    );
  }
}
