import 'package:flutter/material.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/custom_auth_button.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/sign_up_view_body.dart';

class CustomSignupFormField extends StatefulWidget {
  const CustomSignupFormField({super.key});

  @override
  State<CustomSignupFormField> createState() => _CustomSignupFormFieldState();
}

class _CustomSignupFormFieldState extends State<CustomSignupFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         CustomTextField(text: 'Enter your name'),
          SizedBox(height: 10),
          CustomTextField(text: 'Email Address'),
          SizedBox(height: 10),
          CustomTextField(text: 'password'),
          SizedBox(height: 10),
          CustomTextField(text: 'confirm password'),
          SizedBox(height: 30),
          Center(child: CustomAuthButton(text: 'SIGN UP', onPressed: () {})),
      ],
    );
  }
}