import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/app_image.dart';

class CustomIntroItem extends StatelessWidget {
  const CustomIntroItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: 100,
      child: Card(
        color: Colors.grey.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          padding: EdgeInsets.only(top: 20),
          child: Image.asset(
            AppImage.intro1,
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
    );
  }
}
