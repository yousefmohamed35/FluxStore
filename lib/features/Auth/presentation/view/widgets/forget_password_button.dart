import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/app_router.dart';
import 'package:fluxstore/core/utils/styles.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kForgetPasswordView);
          },
          child: Text('Forgot Password?', style: Styles.textStyle12),
        ),
      ],
    );
  }
}
