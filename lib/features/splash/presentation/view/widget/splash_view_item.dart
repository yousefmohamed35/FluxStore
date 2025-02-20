import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/styles.dart';

class SplashViewItem extends StatelessWidget {
  const SplashViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "Welcome to GemStore!",
          style: Styles.textStyle25.copyWith(color: Colors.white),
        ),
        SizedBox(height: 20),
        Text(
          " The home for a fashionista",
          style: Styles.textStyle12.copyWith(color: Colors.white),
        ),
        SizedBox(height: 60),
        Stack(
          children: [
            Container(
              height: 53,
              width: 193,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(width: 1, color: Colors.white),
              ),
              child: Text(
                "Get Started",
                style: Styles.textStyle20.copyWith(color: Colors.white),
              ),
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 100),
      ],
    );
  }
}
