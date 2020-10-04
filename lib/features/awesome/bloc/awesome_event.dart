part of 'awesome_bloc.dart';

@freezed
abstract class AwesomeEvent with _$AwesomeEvent {
  const factory AwesomeEvent.pressed() = _Pressed;
}
