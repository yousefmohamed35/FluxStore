import 'package:flutter/material.dart';
import 'package:fluxstore/core/functions/text_form_field_validation.dart';
import 'package:fluxstore/core/widgets/custom_text_form_field.dart';

class CustomEmailTextFormField extends StatelessWidget {
  const CustomEmailTextFormField({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: 'Email Address',
      controller: emailController,
      validator: (email) {
        return validateEmail(email);
      },
    );
  }
}
