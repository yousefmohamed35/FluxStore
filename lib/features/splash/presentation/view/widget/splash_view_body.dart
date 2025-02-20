import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/app_image.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImage.welcomeImage, fit: BoxFit.cover),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 5),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
