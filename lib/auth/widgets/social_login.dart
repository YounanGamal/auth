import 'package:auth/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.imagesApple),
        SizedBox(width: 20),
        SvgPicture.asset(Assets.imagesGoogle),
        SizedBox(width: 20),
        SvgPicture.asset(Assets.imagesFacebook),
      ],
    );
  }
}
