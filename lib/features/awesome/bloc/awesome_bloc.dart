import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'awesome_event.dart';
part 'awesome_state.dart';
part 'awesome_bloc.freezed.dart';

@injectable
class AwesomeBloc extends Bloc<AwesomeEvent, AwesomeState> {
  AwesomeBloc() : super(AwesomeState.initial(0));

  @override
  Stream<AwesomeState> mapEventToState(
    AwesomeEvent event,
  ) async* {
    yield* event.map(pressed: (e) async* {
      if (state.count == 9) {
        yield AwesomeState.completed(0);
      } else {
        final count = state.count + 1;
        yield AwesomeState.initial(count);
      }
    });
  }
}
