import 'package:flutter/material.dart';
import 'package:fluxstore/core/widgets/custom_button.dart';
import 'package:fluxstore/features/introduction/presentation/view/widgets/dot_indicator.dart';

class CustomUnderHalfIntroView extends StatelessWidget {
  const CustomUnderHalfIntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Color(0xff464447)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (context) {
              return DotIndicator();
            }),
          ),
          SizedBox(height: 50),
          CustomButton(onTap: () {}, text: 'Shopping Now'),
        ],
      ),
    );
  }
}
