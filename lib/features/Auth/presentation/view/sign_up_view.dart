import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/app_image.dart';
import 'package:fluxstore/core/utils/styles.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/custom_auth_button.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/custom_social_icon.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/custom_text_button.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
            Center(child: CustomAuthButton()),
            SizedBox(height: 20),
            Center(child: Text('or sign in with', style: Styles.textStyle12)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: List.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: CustomSocialIcon(image: AppImage.socialIcons[index]),
                );
              }),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have account ?', style: Styles.textStyle14),
                SizedBox(width: 8),
                CustomTextButton(),
              ],
            ),
          ],
        ),
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
