import 'package:flutter/material.dart';
import 'package:fluxstore/features/introduction/presentation/view/widgets/custom_item_intro_view.dart';

class CustomPageViewIntroView extends StatelessWidget {
  const CustomPageViewIntroView({
    super.key,
    required this.controller,
    required this.currentPage, required this.images,
  });

  final PageController controller;
  final int currentPage;
  final List<String> images;
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
              child: CustomItemIntroView(image: images[index]),
            ),
          ),
        );
      },
    );
  }
}
