part of 'awesome_bloc.dart';

@freezed
abstract class AwesomeState with _$AwesomeState {
  const factory AwesomeState.initial(int count) = _Initial;
  const factory AwesomeState.completed(int count) = _Completed;
}
