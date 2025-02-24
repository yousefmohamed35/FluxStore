import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/styles.dart';
import 'package:fluxstore/core/widgets/custom_button.dart';

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
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Color(0xff464447)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
    
              children: [CustomButton(onTap: () {}, text: 'Shopping Now')],
            ),
          ),
        ),
      ],
    );
  }
}
