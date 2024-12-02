import 'package:flutter/material.dart';

class AnimatedPositionFlutter extends StatefulWidget {
  const AnimatedPositionFlutter({super.key});

  @override
  State<AnimatedPositionFlutter> createState() => _AnimatedPositionFlutterState();
}

class _AnimatedPositionFlutterState extends State<AnimatedPositionFlutter> {
  double position = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animation example')),
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          AnimatedPositioned(
            left: position,
            duration: const Duration(milliseconds: 5000),
            child: Image.network(    'https://cdn.pixabay.com/photo/2012/04/11/17/34/car-29078_640.png',
              width: 200.0,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('GO!'),
        onPressed: () {
          setState(() {
            position += MediaQuery.of(context).size.width;
          });
        },
      ),
    );
  }
}
