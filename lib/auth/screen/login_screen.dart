import 'package:auth/auth/widgets/custom_button.dart';
import 'package:auth/auth/widgets/custom_text_form_field.dart';
import 'package:auth/auth/widgets/do_not_have_an_account.dart';
import 'package:auth/auth/widgets/logo_text.dart';
import 'package:auth/auth/widgets/social_login.dart';
import 'package:auth/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 160,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                        right: 10,
                        top: 0,
                        child: SvgPicture.asset(Assets.imagesBox2)),
                    Positioned(
                        left: 0,
                        child: SvgPicture.asset(Assets.imagesBox1)),
                  ],
                ),
              ),
              LogoText(),
              SizedBox(height: 45),
              Text(
                'Welcome back!',
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 18),
              Text(
                'Log in to existing LOGO account',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 50),
              CustomTextFormField(
                icon: Icon(FontAwesomeIcons.user),
                hintText: 'Email',
              ),
              SizedBox(height: 25),
              CustomTextFormField(
                icon: Icon(Icons.lock_outline),
                hintText: 'Password',
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 36),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot your password?',
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              CustomButton(text: 'LOG IN', onTap: () {}),
              SizedBox(height: 45),
              Text(
                'Or sign up using ',
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              SocialLogin(),
              SizedBox(height: 45),
              DoNotHaveAnAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
