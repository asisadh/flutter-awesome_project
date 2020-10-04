part of 'theme_bloc.dart';

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState.light() = _Light;
  const factory ThemeState.dark() = _Dark;
}
