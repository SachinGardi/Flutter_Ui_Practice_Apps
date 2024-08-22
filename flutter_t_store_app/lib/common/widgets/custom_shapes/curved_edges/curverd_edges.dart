import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path>{

  @override
  getClip(Size size) {
      var path = Path();
      path.lineTo(0, size.height);
      final firstCurve = Offset(0, size.height - 20);
      final lastCurve = Offset(30, size.height - 20);

      final secondFirstCurve = Offset(0, size.height - 20);
      final secondLastCurve = Offset(size.width - 30, size.height - 20);

      path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

      path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy, secondLastCurve.dx, secondLastCurve.dy);



      path.lineTo(size.width, 0);
      return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }

}