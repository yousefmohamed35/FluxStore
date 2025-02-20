import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/app_image.dart';
import 'package:fluxstore/features/splash/presentation/view/widget/custom_shadow.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImage.welcomeImage, fit: BoxFit.cover),
        CustomShadow(),
      ],
    );
  }
}

