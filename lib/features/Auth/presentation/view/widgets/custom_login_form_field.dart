import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:fluxstore/core/widgets/custom_email_text_form_field.dart';
import 'package:fluxstore/core/widgets/custom_password_form_field.dart';
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
         CustomEmailTextFormField(emailController: emailController),
          SizedBox(height: 30),
           CustomPasswordTextFormField(
            passwordController: passwordController,
            obscure: obscure,
            onPressed: () {
              setState(() {
                obscure = !obscure;
              });
            },
            text: 'Password',
          ),
          SizedBox(height: 20),
          ForgetPasswordButton(),
          SizedBox(height: 40),
          Center(
            child: CustomAuthButton(
              text: 'LOG IN',
              onPressed: () {
                if (loginFormKey.currentState!.validate()) {
                  FocusScope.of(context).unfocus();
                  emailController.clear();
                  passwordController.clear();
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
