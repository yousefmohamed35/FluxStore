import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/app_image.dart';

class CustomPageViewIntroView extends StatelessWidget {
  const CustomPageViewIntroView({
    super.key,
    required this.controller,
    required this.currentPage,
  });

  final PageController controller;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      itemCount: 3,
      itemBuilder: (context, index) {
        bool isSelected = index == currentPage;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()..scale(1.0, isSelected ? 1 : 0.7),
              child: Card(
                color: Colors.grey[300],
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Image.asset(AppImage.intro1),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
