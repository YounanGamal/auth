import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.icon,
    required this.hintText,
    this.obscureText,
  });

  final Widget icon;
  final String hintText;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: TextFormField(
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          prefixIcon: icon,
          fillColor: Color(0xffF2F2F2),
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffF2F2F2), width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffF2F2F2), width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffF2F2F2), width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
