import 'package:auth/auth/widgets/already_have_an_account.dart';
import 'package:auth/auth/widgets/custom_button.dart';
import 'package:auth/auth/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            SizedBox(height: 45),
            Text(
              'Let’s Get Started!',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 18),
            Text(
              'Create an account on MNZL to get all features',
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              hintText: 'First Name',
              icon: Icon(FontAwesomeIcons.user),
            ),
            SizedBox(height: 28),
            CustomTextFormField(
              hintText: 'Last Name',
              icon: Icon(FontAwesomeIcons.user),
            ),
            SizedBox(height: 28),
            CustomTextFormField(
              hintText: 'Username',
              icon: Icon(FontAwesomeIcons.user),
            ),
            SizedBox(height: 28),

            CustomTextFormField(
              hintText: 'Email',
              icon: Icon(Icons.email_outlined),
            ),
            SizedBox(height: 28),

            CustomTextFormField(
              hintText: 'Password',
              icon: Icon(Icons.lock_outline),
              obscureText: true,
            ),
            SizedBox(height: 28),
            CustomTextFormField(
              hintText: 'Confirm Password',
              icon: Icon(Icons.lock_outline),
              obscureText: true,
            ),
            SizedBox(height: 33),
            CustomButton(text: 'Register', onTap: () {}),
            SizedBox(height: 30),
            AlreadyHaveAnAccount(),
          ],
        ),
      ),
    );
  }
}
