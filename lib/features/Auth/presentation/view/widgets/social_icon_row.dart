import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/app_image.dart';
import 'package:fluxstore/features/Auth/presentation/view/widgets/custom_social_icon.dart';

class SocialIconRow extends StatelessWidget {
  const SocialIconRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
    
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: CustomSocialIcon(image: AppImage.socialIcons[index]),
        );
      }),
    );
  }
}
