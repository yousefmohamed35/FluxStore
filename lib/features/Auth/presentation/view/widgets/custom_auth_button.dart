import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/styles.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({super.key, required this.text, required this.onPressed});
  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff2D201C),
        padding: EdgeInsets.symmetric(horizontal: 48, vertical: 16),
      ),
      child: Text(
        text,
        style: Styles.textStyle16.copyWith(color: Colors.white),
      ),
    );
  }
}
