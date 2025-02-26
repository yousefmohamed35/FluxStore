import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/styles.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/custom_text_button.dart';

class AnotherOptionForAuth extends StatelessWidget {
  const AnotherOptionForAuth({
    super.key, required this.text, required this.link, required this.onPressed,
  });
final String text;
final String link;
final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: Styles.textStyle14),
        SizedBox(width: 8),
        CustomTextButton(link: link, onPressed:onPressed ,),
      ],
    );
  }
}
