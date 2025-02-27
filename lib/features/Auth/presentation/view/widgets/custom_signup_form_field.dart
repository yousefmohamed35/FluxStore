import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluxstore/core/functions/text_form_field_validation.dart';
import 'package:fluxstore/core/widgets/custom_email_text_form_field.dart';
import 'package:fluxstore/core/widgets/custom_password_form_field.dart';
import 'package:fluxstore/core/widgets/custom_text_form_field.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/custom_auth_button.dart';

class CustomSignupFormField extends StatefulWidget {
  const CustomSignupFormField({super.key});

  @override
  State<CustomSignupFormField> createState() => _CustomSignupFormFieldState();
}

class _CustomSignupFormFieldState extends State<CustomSignupFormField> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey();
  bool obscure = true;
  bool obscureConfirm = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginFormKey,
      child: Column(
        spacing: 20,
        children: [
          CustomTextFormField(
            hintText: 'Enter your name',
            controller: userNameController,
            validator: (name) {
              return validateUsername(name);
            },
          ),

          CustomEmailTextFormField(emailController: emailController),

          CustomPasswordTextFormField(
            passwordController: passwordController,
            obscure: obscure,
            onPressed: () {
              setState(() {
                obscure = !obscure;
              });
            },
          ),
          CustomTextFormField(
            hintText: 'confirm Password',
            controller: confirmPasswordController,
            obscureText: obscureConfirm,
            suffix: IconButton(
              onPressed: () {
                setState(() {
                  obscureConfirm = !obscureConfirm;
                });
              },
              icon:
                  obscureConfirm
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
            ),
            validator: (confirmPassword) {
              return validateConfirmPassword(
                passwordController.text,
                confirmPassword,
              );
            },
          ),
          SizedBox(height: 10),
          Center(
            child: CustomAuthButton(
              text: 'SIGN UP',
              onPressed: () {
                if (loginFormKey.currentState!.validate()) {
                  FocusScope.of(context).unfocus();
                  emailController.clear();
                  passwordController.clear();
                  confirmPasswordController.clear();
                  userNameController.clear();
                  log("success");
                } else {
                  log("not");
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
