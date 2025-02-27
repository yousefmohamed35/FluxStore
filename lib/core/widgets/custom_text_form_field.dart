import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final TextEditingController? controller;
  final Widget? suffix;
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.validator,
    this.obscureText = false,
    this.controller, this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      validator: validator,

      decoration: InputDecoration(
        hintText: hintText,
        suffix: suffix,
      ),
      
    );
  }
}
