import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.link});
  final String link;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(padding: WidgetStatePropertyAll(EdgeInsets.zero)),
      onPressed: () {
        GoRouter.of(context).push(AppRouter.kLoginView);
      },
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
