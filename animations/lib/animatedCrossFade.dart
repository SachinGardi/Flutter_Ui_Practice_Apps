import 'package:flutter/material.dart';

class AnimatedScrossFade extends StatefulWidget {
  const AnimatedScrossFade({super.key});

  @override
  State<AnimatedScrossFade> createState() => _AnimatedScrossFadeState();
}

class _AnimatedScrossFadeState extends State<AnimatedScrossFade> {
  bool _first = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedCrossFade'),
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              duration: const Duration(milliseconds:800 ),
              firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0),
              secondChild: const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
              crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
            MaterialButton(
              color: Colors.lightBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              onPressed: (){
                setState(() {
                  _first = !_first;
                });
              },
              child: const Text('animateCrossFade'),)


          ],
        ),
      ),
    );
  }
}
