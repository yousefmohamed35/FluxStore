import 'package:flutter/material.dart';
import 'package:fluxstore/core/utils/app_router.dart';

void main() {
  runApp(FluxStore());
}

class FluxStore extends StatelessWidget {
  const FluxStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: AppRouter.router);
  }
}
