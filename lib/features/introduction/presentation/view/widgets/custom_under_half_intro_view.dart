import 'package:flutter/material.dart';
import 'package:fluxstore/core/database/cache/cache_helper.dart';
import 'package:fluxstore/core/database/cache/cache_keys.dart';
import 'package:fluxstore/core/service/service_locator.dart';
import 'package:fluxstore/core/utils/app_router.dart';
import 'package:fluxstore/core/widgets/custom_button.dart';
import 'package:fluxstore/features/introduction/presentation/view/widgets/dot_indicator.dart';
import 'package:go_router/go_router.dart';

class CustomUnderHalfIntroView extends StatelessWidget {
  const CustomUnderHalfIntroView({super.key, required this.current});
  final int current;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Color(0xff464447)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return DotIndicator(selected: current == index);
            }),
          ),
          SizedBox(height: 30),
          CustomButton(
            onTap: () {
              getit.get<CacheHelper>().setBool(CacheKeys.introKey, true);
               GoRouter.of(context).pushReplacement(AppRouter.kSignUpView);
            },
            text: 'Shopping Now',
          ),
        ],
      ),
    );
  }
}
