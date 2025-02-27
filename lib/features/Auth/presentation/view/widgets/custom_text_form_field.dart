import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter your text here',
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
      ),
    );
  }
}
