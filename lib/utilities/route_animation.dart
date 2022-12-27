import 'package:flutter/material.dart';
import 'package:megi/screens/form.dart';

Route routeToForm() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => FormScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        //MARK: 1-ADD CURVES ANIMATION TO EASE
        var curves = Curves.ease;
        //MARK: 2-CONNECT TO ANIMATION
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curves));
        var OffsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: OffsetAnimation,
          child: child,
        );
      });
}
