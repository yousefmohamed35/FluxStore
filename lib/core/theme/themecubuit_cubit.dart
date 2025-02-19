import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluxstore/core/database/cache/cache_helper.dart';
import 'package:fluxstore/core/database/cache/cache_keys.dart';
import 'package:fluxstore/core/service/service_locator.dart';

part 'themecubuit_state.dart';

class ThemecubuitCubit extends Cubit<ThemecubuitState> {
  ThemecubuitCubit() : super(ThemecubuitInitial());
  bool isDark = true;
  Future<void> changeTheme({bool? mode}) async {
    if (mode != null) {
      isDark = mode;
      emit(ThemecubuitChanges(isDark: isDark));
    } else {
      isDark = !isDark;
      getit.get<CacheHelper>().setBool(CacheKeys.savedTheme, isDark).then((
        value,
      ) {
        emit(ThemecubuitChanges(isDark: isDark));
      });
    }
  }
}
