import 'package:flutter/material.dart';
import 'package:fluxstore/core/animation/animation_do.dart';
import 'package:fluxstore/core/database/cache/cache_helper.dart';
import 'package:fluxstore/core/database/cache/cache_keys.dart';
import 'package:fluxstore/core/service/service_locator.dart';
import 'package:fluxstore/core/utils/app_router.dart';
import 'package:fluxstore/core/utils/styles.dart';
import 'package:fluxstore/core/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

class SplashViewItem extends StatelessWidget {
  const SplashViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInUp(
      duration: 600,

      child: Column(
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
          CustomButton(
            onTap: () {
              bool isNot = getit.get<CacheHelper>().getBool(CacheKeys.introKey)??false;
              if (!isNot) {
                GoRouter.of(context).pushReplacement(AppRouter.kIntroView);
              }
              
             
            },
            text: 'Get Started',
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
