import 'package:flutter/material.dart';
import 'package:fluxstore/core/widgets/custom_button.dart';

class CustomUnderHalfIntroView extends StatelessWidget {
  const CustomUnderHalfIntroView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Color(0xff464447)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [CustomButton(onTap: () {}, text: 'Shopping Now')],
      ),
    );
  }
}
