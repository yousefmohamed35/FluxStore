import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/styles.dart';
import 'package:fluxstore/features/introduction/presentation/view/widgets/custom_under_half_intro_view.dart';

class IntroViewBody extends StatelessWidget {
  const IntroViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100),
        Text('Discover something new', style: Styles.textStyle20),
        SizedBox(height: 20),
        Text('Special new arrivals just for you', style: Styles.textStyle14),
        SizedBox(height: 200),
        Expanded(
          child: CustomUnderHalfIntroView(),
        ),
      ],
    );
  }
}

