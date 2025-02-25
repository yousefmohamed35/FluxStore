import 'package:flutter/material.dart';

class CustomSocialIcon extends StatelessWidget {
  const CustomSocialIcon({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      radius: 26,

      child: CircleAvatar(
        backgroundColor: Colors.white,

        radius: 25,
        child: Image.asset(image, filterQuality: FilterQuality.high),
      ),
    );
  }
}
