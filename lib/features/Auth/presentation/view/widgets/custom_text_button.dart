import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(EdgeInsets.zero),
      ),
      onPressed: () {},
      child: Text(
        'Log In',
        style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          decorationThickness: 2,
        ),
      ),
    );
  }
}
