import 'package:fluxstore/core/database/cache/cache_helper.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
void setupServiceLocator() {
  getit.registerSingleton<CacheHelper>(CacheHelper());
  
}