import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/app_router.dart';
import 'package:fluxstore/core/utils/styles.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/another_option_for_auth.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/custom_login_form_field.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/social_icon_row.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          SizedBox(height: 70),
          Text("Log into", style: Styles.textStyle25),
          SizedBox(height: 10),
          Text("your account", style: Styles.textStyle25),
          SizedBox(height: 50),
          CustomLoginFormField(),
          SizedBox(height: 30),
          Center(child: Text('or sign in with', style: Styles.textStyle12)),
          SizedBox(height: 20),
          SocialIconRow(),
          SizedBox(height: 50),
          AnotherOptionForAuth(
            text: "Don’t have an account?",
            link: 'Sign Up',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSignUpView);
            },
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
