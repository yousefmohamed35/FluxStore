import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          width: 200,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Colors.white.withOpacity(0.5),
              width: 1.5,
            ),
          ),
          child: Text(
            'Get Started',
            style: Styles.textStyle16.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
