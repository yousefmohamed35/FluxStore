import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/styles.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/another_option_for_auth.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/custom_auth_button.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/social_icon_row.dart';

class SignUpViemBody extends StatelessWidget {
  const SignUpViemBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          Center(child: CustomAuthButton(text: 'SIGN UP', onPressed: () {})),
          SizedBox(height: 20),
          Center(child: Text('or sign in with', style: Styles.textStyle12)),
          SizedBox(height: 10),
          SocialIconRow(),
          SizedBox(height: 20),
          AnotherOptionForAuth(text: 'Already have account ?', link: 'Log in'),
        ],
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
