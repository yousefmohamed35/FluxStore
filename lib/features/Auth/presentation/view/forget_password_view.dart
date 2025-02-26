import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/styles.dart';
import 'package:fluxstore/core/widgets/custom_back_button.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/sign_up_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            CustomBackButton(),
            Text("Forget Password ?", style: Styles.textStyle25),
            SizedBox(height: 20),
            Text(
              'Enter email associated with your account and we’ll send and email with intructions to reset your password',
            ),
            SizedBox(height: 60),
            CustomTextField(text: 'Email address'),
          ],
        ),
      ),
    );
  }
}
