import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/styles.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/custom_text_button.dart';

class AnotherOptionForAuth extends StatelessWidget {
  const AnotherOptionForAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Already have account ?', style: Styles.textStyle14),
        SizedBox(width: 8),
        CustomTextButton(),
      ],
    );
  }
}
