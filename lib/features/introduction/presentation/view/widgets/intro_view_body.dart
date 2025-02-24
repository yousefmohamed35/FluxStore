import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/app_image.dart';
import 'package:fluxstore/core/utils/styles.dart';
import 'package:fluxstore/features/introduction/presentation/view/widgets/custom_page_view_intro_view.dart';
import 'package:fluxstore/features/introduction/presentation/view/widgets/custom_under_half_intro_view.dart';

class IntroViewBody extends StatefulWidget {
  const IntroViewBody({super.key});

  @override
  State<IntroViewBody> createState() => _IntroViewBodyState();
}

class _IntroViewBodyState extends State<IntroViewBody> {
  final PageController controller = PageController(viewportFraction: 0.8);
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(height: 100),
            Text('Discover something new', style: Styles.textStyle20),
            const SizedBox(height: 20),
            Text(
              'Special new arrivals just for you',
              style: Styles.textStyle14,
            ),
            const SizedBox(height: 300),
            Expanded(child: CustomUnderHalfIntroView(current: currentPage)),
          ],
        ),
        Center(
          child: SizedBox(
            height: 355,
            child: CustomPageViewIntroView(
              controller: controller,
              currentPage: currentPage,
              images: [AppImage.intro1, AppImage.intro2, AppImage.intro3],
            ),
          ),
        ),
      ],
    );
  }
}
