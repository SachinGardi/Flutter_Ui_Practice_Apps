
import 'dart:math' as math;
import 'package:flutter/material.dart';


class ShakeAnimationScreen extends StatefulWidget {
  const ShakeAnimationScreen({super.key});

  @override
  State<ShakeAnimationScreen> createState() => _ShakeAnimationScreenState();
}

class _ShakeAnimationScreenState extends State<ShakeAnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    // Initialize the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500), // Duration of the shake effect
    );

    // Create a shake effect using a Tween with oscillation
    _animation = Tween<double>(begin: 0, end: 10).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.elasticIn, // Elastic curve for shake effect
      ),
    );

    // Start the animation
    _controller.repeat(reverse: true); // Repeats the animation
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when not in use
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
              offset: Offset(_animation.value * (math.Random().nextBool() ? 1 : -1), 0),
              child: child,
            );
          },
          child: const FlutterLogo(
            style: FlutterLogoStyle.stacked,
            size: 150,
          ),
        ),
      ),
    );
  }
}
