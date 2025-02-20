import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/styles.dart';
import 'package:fluxstore/core/widgets/custom_button.dart';

class SplashViewItem extends StatelessWidget {
  const SplashViewItem({super.key});

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
        CustomButton(),
        SizedBox(height: 100),
      ],
    );
  }
}

