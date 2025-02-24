import 'package:flutter/material.dart';

class CustomItemIntroView extends StatelessWidget {
  const CustomItemIntroView({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Image.asset(image),
        ),
      ),
    );
  }
}
