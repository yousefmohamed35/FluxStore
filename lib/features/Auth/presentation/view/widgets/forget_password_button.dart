import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/styles.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [GestureDetector(
        onTap: (){
          
        },
        child: Text('Forgot Password?', style: Styles.textStyle12))],
    );
  }
}