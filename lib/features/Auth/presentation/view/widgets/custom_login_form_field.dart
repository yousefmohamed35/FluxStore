import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:fluxstore/core/functions/text_form_field_validation.dart';
import 'package:fluxstore/core/widgets/custom_text_form_field.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/custom_auth_button.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/forget_password_button.dart';

class CustomLoginFormField extends StatefulWidget {
  const CustomLoginFormField({super.key});

  @override
  State<CustomLoginFormField> createState() => _CustomLoginFormFieldState();
}

class _CustomLoginFormFieldState extends State<CustomLoginFormField> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey();
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginFormKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Email Address',
            controller: emailController,
            validator: (email) {
              return validateEmail(email);
            },
          ),
          SizedBox(height: 30),
          CustomTextFormField(
            hintText: 'Password',
            controller: passwordController,
            obscureText: obscure,
            suffix: IconButton(
              onPressed: () {
                setState(() {
                  obscure = !obscure;
                });
              },
              icon:
                  obscure ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
            ),
            validator: (password) {
              return validatePassword(password);
            },
          ),
          SizedBox(height: 20),
          ForgetPasswordButton(),
          SizedBox(height: 40),
          Center(
            child: CustomAuthButton(
              text: 'LOG IN',
              onPressed: () {
                if (loginFormKey.currentState!.validate()) {
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
