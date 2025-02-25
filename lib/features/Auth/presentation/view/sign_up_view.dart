import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/styles.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/custom_auth_button.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Text("Create", style: Styles.textStyle25),
            SizedBox(height: 10),
            Text("your account", style: Styles.textStyle25),
            SizedBox(height: 30),
            CustomTextField(text: 'Enter your name'),
            SizedBox(height: 10),
            CustomTextField(text: 'Email Address'),
            SizedBox(height: 10),
            CustomTextField(text: 'password'),
            SizedBox(height: 10),
            CustomTextField(text: 'confirm password'),
            SizedBox(height: 30),
            Center(
              child: CustomAuthButton(),
            ),
          ],
        ),
      ),
    );
  }
}



class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextField(decoration: InputDecoration(labelText: text));
  }
}
