import 'package:flutter/material.dart';
import 'package:fluxstore/core/functions/text_form_field_validation.dart';
import 'package:fluxstore/core/widgets/custom_text_form_field.dart';

class CustomPasswordTextFormField extends StatelessWidget {
  const CustomPasswordTextFormField({
    super.key,
    required this.passwordController,
    required this.obscure, required this.onPressed,
  });

  final TextEditingController passwordController;
  final bool obscure;
final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: 'Password',
      controller: passwordController,
      obscureText: obscure,
      suffix: IconButton(
        onPressed: onPressed,
        icon:
            obscure ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
      ),
      validator: (password) {
        return validatePassword(password);
      },
    );
  }
}

