import 'dart:async';

import 'package:assesment/core/usecases/usecase.dart';
import 'package:assesment/features/restaurants/domain/entities/restaurant.dart';
import 'package:assesment/features/restaurants/domain/usecases/getRestaurants.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'restaurant_event.dart';
part 'restaurant_state.dart';
part 'restaurant_bloc.freezed.dart';

@injectable
class RestaurantBloc extends Bloc<RestaurantEvent, RestaurantState> {
  final GetResturants getResturants;

  RestaurantBloc({
    @required this.getResturants,
  }) : super(RestaurantState.loading());

  @override
  Stream<RestaurantState> mapEventToState(
    RestaurantEvent event,
  ) async* {
    yield* event.map(fetchRestaurant: (e) async* {
      yield RestaurantState.loading();
      final result = await getResturants(NoParams());
      yield result.fold(
        (failure) => RestaurantState.failed(failure.toString()),
        (news) => RestaurantState.success(news),
      );
    });
  }
}
