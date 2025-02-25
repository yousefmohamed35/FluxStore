import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/styles.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff2D201C),
        padding: EdgeInsets.symmetric(horizontal: 48, vertical: 16),
      ),
      child: Text(
        'Sign up',
        style: Styles.textStyle16.copyWith(color: Colors.white),
      ),
    );
  }
}