import 'package:flutter/material.dart';
import 'package:fluxstore/core/functions/email_validation.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validateEmail(),
      decoration: InputDecoration(hintText: hintText));
  }
}
