part of 'restaurant_bloc.dart';

@freezed
abstract class RestaurantState with _$RestaurantState {
  const factory RestaurantState.loading() = _Loading;
  const factory RestaurantState.success(List<Restaurant> list) = _Success;
  const factory RestaurantState.failed(String message) = _Failed;
}
