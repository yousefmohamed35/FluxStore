import 'package:flutter/material.dart';
import 'package:fluxstore/core/database/cache/cache_helper.dart';
import 'package:fluxstore/core/service/service_locator.dart';
import 'package:fluxstore/core/utils/app_router.dart';

void main() async {
  await getit<CacheHelper>().initialize();
  setupServiceLocator();
  runApp(FluxStore());
}

class FluxStore extends StatelessWidget {
  const FluxStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: AppRouter.router);
  }
}
