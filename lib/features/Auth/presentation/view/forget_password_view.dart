import 'package:flutter/material.dart';
import 'package:fluxstore/core/widgets/custom_back_button.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(children: [CustomBackButton()]));
  }
}

