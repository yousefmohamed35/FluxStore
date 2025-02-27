import 'package:flutter/material.dart';
import 'package:fluxstore/core/widgets/custom_text_form_field.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/custom_auth_button.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/forget_password_button.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/sign_up_view_body.dart';

class CustomLoginFormField extends StatefulWidget {
  const CustomLoginFormField({super.key});

  @override
  State<CustomLoginFormField> createState() => _CustomLoginFormFieldState();
}

class _CustomLoginFormFieldState extends State<CustomLoginFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(hintText: 'Email Address',),
          SizedBox(height: 20),
          CustomTextField(text: 'Password'),
          SizedBox(height: 20),
          ForgetPasswordButton(),
          SizedBox(height: 40),
          Center(child: CustomAuthButton(text: 'LOG IN', onPressed: () {})),
      ],
    );
  }
}