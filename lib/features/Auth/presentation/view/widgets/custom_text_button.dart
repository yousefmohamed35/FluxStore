import 'package:flutter/material.dart';


class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.link, required this.onPressed});
  final String link;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(padding: WidgetStatePropertyAll(EdgeInsets.zero)),
      onPressed: onPressed,
      child: Text(
        link,
        style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          decorationThickness: 2,
        ),
      ),
    );
  }
}
