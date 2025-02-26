import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/styles.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/custom_auth_button.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/sign_up_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Text("Log into", style: Styles.textStyle25),
            SizedBox(height: 10),
            Text("your account", style: Styles.textStyle25),
            SizedBox(height: 50),
            CustomTextField(text: 'Email address'),
            SizedBox(height: 20),
            CustomTextField(text: 'Password'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text('Forgot Password?', style: Styles.textStyle12)],
            ),
            SizedBox(height: 30),
            CustomAuthButton(),
          ],
        ),
      ),
    );
  }
}
