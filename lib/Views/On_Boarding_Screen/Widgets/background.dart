import 'package:flutter/material.dart';
import 'dart:math' as math;

class Background extends StatelessWidget {
  const Background({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: size.height * -0.3,
            left: size.height * -0.65,
            child: Transform.rotate(
              angle: math.pi / 4,
              child: Container(
                height: size.height,
                width: size.height,
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(155),
                  border: Border.all(width: 1, color: Color(0xFFEEF2E2)),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(152),
                    color: Color(0xFFE1F6F4),
                  ),
                ),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
