// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'restaurant_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RestaurantEventTearOff {
  const _$RestaurantEventTearOff();

// ignore: unused_element
  _FetchRestaurant fetchRestaurant() {
    return const _FetchRestaurant();
  }
}

// ignore: unused_element
const $RestaurantEvent = _$RestaurantEventTearOff();

mixin _$RestaurantEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchRestaurant(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchRestaurant(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchRestaurant(_FetchRestaurant value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchRestaurant(_FetchRestaurant value),
    @required Result orElse(),
  });
}

abstract class $RestaurantEventCopyWith<$Res> {
  factory $RestaurantEventCopyWith(
          RestaurantEvent value, $Res Function(RestaurantEvent) then) =
      _$RestaurantEventCopyWithImpl<$Res>;
}

class _$RestaurantEventCopyWithImpl<$Res>
    implements $RestaurantEventCopyWith<$Res> {
  _$RestaurantEventCopyWithImpl(this._value, this._then);

  final RestaurantEvent _value;
  // ignore: unused_field
  final $Res Function(RestaurantEvent) _then;
}

abstract class _$FetchRestaurantCopyWith<$Res> {
  factory _$FetchRestaurantCopyWith(
          _FetchRestaurant value, $Res Function(_FetchRestaurant) then) =
      __$FetchRestaurantCopyWithImpl<$Res>;
}

class __$FetchRestaurantCopyWithImpl<$Res>
    extends _$RestaurantEventCopyWithImpl<$Res>
    implements _$FetchRestaurantCopyWith<$Res> {
  __$FetchRestaurantCopyWithImpl(
      _FetchRestaurant _value, $Res Function(_FetchRestaurant) _then)
      : super(_value, (v) => _then(v as _FetchRestaurant));

  @override
  _FetchRestaurant get _value => super._value as _FetchRestaurant;
}

class _$_FetchRestaurant implements _FetchRestaurant {
  const _$_FetchRestaurant();

  @override
  String toString() {
    return 'RestaurantEvent.fetchRestaurant()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchRestaurant);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchRestaurant(),
  }) {
    assert(fetchRestaurant != null);
    return fetchRestaurant();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchRestaurant(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchRestaurant != null) {
      return fetchRestaurant();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchRestaurant(_FetchRestaurant value),
  }) {
    assert(fetchRestaurant != null);
    return fetchRestaurant(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchRestaurant(_FetchRestaurant value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchRestaurant != null) {
      return fetchRestaurant(this);
    }
    return orElse();
  }
}

abstract class _FetchRestaurant implements RestaurantEvent {
  const factory _FetchRestaurant() = _$_FetchRestaurant;
}

class _$RestaurantStateTearOff {
  const _$RestaurantStateTearOff();

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Success success(List<Restaurant> list) {
    return _Success(
      list,
    );
  }

// ignore: unused_element
  _Failed failed(String message) {
    return _Failed(
      message,
    );
  }
}

// ignore: unused_element
const $RestaurantState = _$RestaurantStateTearOff();

mixin _$RestaurantState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result success(List<Restaurant> list),
    @required Result failed(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result success(List<Restaurant> list),
    Result failed(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result success(_Success value),
    @required Result failed(_Failed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result success(_Success value),
    Result failed(_Failed value),
    @required Result orElse(),
  });
}

abstract class $RestaurantStateCopyWith<$Res> {
  factory $RestaurantStateCopyWith(
          RestaurantState value, $Res Function(RestaurantState) then) =
      _$RestaurantStateCopyWithImpl<$Res>;
}

class _$RestaurantStateCopyWithImpl<$Res>
    implements $RestaurantStateCopyWith<$Res> {
  _$RestaurantStateCopyWithImpl(this._value, this._then);

  final RestaurantState _value;
  // ignore: unused_field
  final $Res Function(RestaurantState) _then;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$RestaurantStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'RestaurantState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result success(List<Restaurant> list),
    @required Result failed(String message),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(failed != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result success(List<Restaurant> list),
    Result failed(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result success(_Success value),
    @required Result failed(_Failed value),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(failed != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result success(_Success value),
    Result failed(_Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RestaurantState {
  const factory _Loading() = _$_Loading;
}

abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({List<Restaurant> list});
}

class __$SuccessCopyWithImpl<$Res> extends _$RestaurantStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(_Success(
      list == freezed ? _value.list : list as List<Restaurant>,
    ));
  }
}

class _$_Success implements _Success {
  const _$_Success(this.list) : assert(list != null);

  @override
  final List<Restaurant> list;

  @override
  String toString() {
    return 'RestaurantState.success(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result success(List<Restaurant> list),
    @required Result failed(String message),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(failed != null);
    return success(list);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result success(List<Restaurant> list),
    Result failed(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result success(_Success value),
    @required Result failed(_Failed value),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(failed != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result success(_Success value),
    Result failed(_Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements RestaurantState {
  const factory _Success(List<Restaurant> list) = _$_Success;

  List<Restaurant> get list;
  _$SuccessCopyWith<_Success> get copyWith;
}

abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$FailedCopyWithImpl<$Res> extends _$RestaurantStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_Failed(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_Failed implements _Failed {
  const _$_Failed(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'RestaurantState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failed &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result success(List<Restaurant> list),
    @required Result failed(String message),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(failed != null);
    return failed(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result success(List<Restaurant> list),
    Result failed(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result success(_Success value),
    @required Result failed(_Failed value),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result success(_Success value),
    Result failed(_Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements RestaurantState {
  const factory _Failed(String message) = _$_Failed;

  String get message;
  _$FailedCopyWith<_Failed> get copyWith;
}
