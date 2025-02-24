import 'package:flutter/material.dart';
import 'package:fluxstore/features/introduction/presentation/view/widgets/intro_view_body.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroViewBody(),
    );
  }
}

