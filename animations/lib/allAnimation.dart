import 'package:animations/animatedContainer.dart';
import 'package:animations/animatedPadding.dart';
import 'package:animations/page1.dart';
import 'package:animations/physics_card_drag_animation.dart';
import 'package:animations/rotationTransition.dart';
import 'package:animations/sizeTransition.dart';
import 'package:animations/slideTransition.dart';
import 'package:flutter/material.dart';

import 'ScaleTransition.dart';
import 'animatedAlign.dart';
import 'animatedCrossFade.dart';
import 'animatedList.dart';
import 'animatedOpacity.dart';
import 'animatedPosition.dart';
import 'animatedSize.dart';
import 'animatedSpalshScreen.dart';
import 'animatedWidget.dart';

class FlutterAnimation extends StatefulWidget {
  const FlutterAnimation({super.key});

  @override
  State<FlutterAnimation> createState() => _FlutterAnimationState();
}

class _FlutterAnimationState extends State<FlutterAnimation> {

  MaterialButton buildMaterialButton(BuildContext context,{
    Color color = Colors.deepPurple,
    Widget pageName = const AnimatedPositionFlutter(),
    String btnText = 'AnimatedPosition'

  }) {
    return MaterialButton(
      color: color,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  pageName,));
      },
      child:  Text(btnText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Flutter Animations',style: TextStyle(
          color: Colors.white
        )),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          buildMaterialButton(context),
          buildMaterialButton(context,color: Colors.pink,btnText: 'AnimatedContainer',pageName: const AnimatedContainerDemo()),
          buildMaterialButton(context,color: Colors.indigoAccent,btnText: 'AnimatedPadding',pageName: const AnimatedPaddingExample()),
          buildMaterialButton(context,color: Colors.purple,btnText: 'AnimatedAlign',pageName: const AnimatedAlignExampleApp()),
          buildMaterialButton(context,color: Colors.black,btnText: 'AnimatedCrossFade',pageName: const AnimatedScrossFade()),
          buildMaterialButton(context,color: Colors.deepOrange,btnText: 'AnimatedList',pageName: const AnimatedListSample()),
          buildMaterialButton(context,color: Colors.amber,btnText: 'AnimatedList',pageName: const LogoFade()),
          buildMaterialButton(context,color: Colors.brown,btnText: 'AnimatedSize',pageName: const AnimatedSizeExampleApp()),
          buildMaterialButton(context,color: Colors.orange,btnText: 'AnimatedWidget',pageName: const AnimatedWidgetExampleApp()),
          buildMaterialButton(context,color: Colors.green,btnText: 'SlideTransition',pageName: const SlideTransitionExampleApp()),
          buildMaterialButton(context,color: Colors.blueGrey,btnText: 'SizeTransition',pageName: const SizeTransitionExampleApp()),
          buildMaterialButton(context,color: Colors.lightBlueAccent,btnText: 'RotationTransition',pageName: const RotationTransitionExampleApp()),
          buildMaterialButton(context,color: Colors.lime,btnText: 'ScaleTransition',pageName: const ScaleTransitionExampleApp()),
          buildMaterialButton(context,color: Colors.deepPurpleAccent.shade200,btnText: 'PageRouteTransition',pageName: const Page1()),
          buildMaterialButton(context,color: Colors.red.shade200,btnText: 'PhysicsCardDragSimulation',pageName: const PhysicsCardDragDemo()),
          buildMaterialButton(context,color: const Color(0xff780000),btnText: 'SpringBasedSplashScreen',pageName:  PhysicsSplashScreen()),
        ],
      ),
    );
  }

}
