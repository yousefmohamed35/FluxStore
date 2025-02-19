part of 'themecubuit_cubit.dart';

abstract class ThemecubuitState {}

class ThemecubuitInitial extends ThemecubuitState {}

class ThemecubuitChanges extends ThemecubuitState {
  final bool isDark;

  ThemecubuitChanges({required this.isDark});
}
