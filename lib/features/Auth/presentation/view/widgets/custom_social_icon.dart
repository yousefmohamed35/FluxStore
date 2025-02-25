import 'package:flutter/material.dart';

class CustomSocialIcon extends StatelessWidget {
  const CustomSocialIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      radius: 26,

      child: CircleAvatar(
        backgroundColor: Colors.white,

        radius: 25,
        child: Icon(Icons.apple),
      ),
    );
  }
}
