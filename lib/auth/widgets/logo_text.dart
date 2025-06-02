import 'package:flutter/material.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback:
          (bounds) => LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xff91DDFF), Color(0xff7A9EAE)],
      ).createShader(bounds),
      child: Text(
        'LOGO',
        style: TextStyle(
          fontSize: 80,
          fontWeight: FontWeight.w400,
          fontFamily: 'Prime',
          color: Colors.white,
        ),
      ),
    );
  }
}
