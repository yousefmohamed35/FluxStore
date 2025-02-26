import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/app_router.dart';
import 'package:fluxstore/core/utils/styles.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/another_option_for_auth.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/custom_auth_button.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/sign_up_view_body.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/social_icon_row.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 100),
          Text("Log into", style: Styles.textStyle25),
          SizedBox(height: 10),
          Text("your account", style: Styles.textStyle25),
          SizedBox(height: 50),
          CustomTextField(text: 'Email address'),
          SizedBox(height: 20),
          CustomTextField(text: 'Password'),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('Forgot Password?', style: Styles.textStyle12)],
          ),
          SizedBox(height: 40),
          Center(child: CustomAuthButton(text: 'LOG IN', onPressed: () {})),
          SizedBox(height: 20),
          Center(child: Text('or sign in with', style: Styles.textStyle12)),
          SizedBox(height: 10),
          SocialIconRow(),
          SizedBox(height: 20),
          Spacer(),
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
