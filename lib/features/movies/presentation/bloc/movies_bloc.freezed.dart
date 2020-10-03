// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MoviesEventTearOff {
  const _$MoviesEventTearOff();

// ignore: unused_element
  _FetchMovies fetchMovies() {
    return const _FetchMovies();
  }
}

// ignore: unused_element
const $MoviesEvent = _$MoviesEventTearOff();

mixin _$MoviesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchMovies(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchMovies(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchMovies(_FetchMovies value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchMovies(_FetchMovies value),
    @required Result orElse(),
  });
}

abstract class $MoviesEventCopyWith<$Res> {
  factory $MoviesEventCopyWith(
          MoviesEvent value, $Res Function(MoviesEvent) then) =
      _$MoviesEventCopyWithImpl<$Res>;
}

class _$MoviesEventCopyWithImpl<$Res> implements $MoviesEventCopyWith<$Res> {
  _$MoviesEventCopyWithImpl(this._value, this._then);

  final MoviesEvent _value;
  // ignore: unused_field
  final $Res Function(MoviesEvent) _then;
}

abstract class _$FetchMoviesCopyWith<$Res> {
  factory _$FetchMoviesCopyWith(
          _FetchMovies value, $Res Function(_FetchMovies) then) =
      __$FetchMoviesCopyWithImpl<$Res>;
}

class __$FetchMoviesCopyWithImpl<$Res> extends _$MoviesEventCopyWithImpl<$Res>
    implements _$FetchMoviesCopyWith<$Res> {
  __$FetchMoviesCopyWithImpl(
      _FetchMovies _value, $Res Function(_FetchMovies) _then)
      : super(_value, (v) => _then(v as _FetchMovies));

  @override
  _FetchMovies get _value => super._value as _FetchMovies;
}

class _$_FetchMovies implements _FetchMovies {
  const _$_FetchMovies();

  @override
  String toString() {
    return 'MoviesEvent.fetchMovies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchMovies);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchMovies(),
  }) {
    assert(fetchMovies != null);
    return fetchMovies();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchMovies(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMovies != null) {
      return fetchMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchMovies(_FetchMovies value),
  }) {
    assert(fetchMovies != null);
    return fetchMovies(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchMovies(_FetchMovies value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMovies != null) {
      return fetchMovies(this);
    }
    return orElse();
  }
}

abstract class _FetchMovies implements MoviesEvent {
  const factory _FetchMovies() = _$_FetchMovies;
}

class _$MoviesStateTearOff {
  const _$MoviesStateTearOff();

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Success success(List<Movie> list) {
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
const $MoviesState = _$MoviesStateTearOff();

mixin _$MoviesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result success(List<Movie> list),
    @required Result failed(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result success(List<Movie> list),
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

abstract class $MoviesStateCopyWith<$Res> {
  factory $MoviesStateCopyWith(
          MoviesState value, $Res Function(MoviesState) then) =
      _$MoviesStateCopyWithImpl<$Res>;
}

class _$MoviesStateCopyWithImpl<$Res> implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._value, this._then);

  final MoviesState _value;
  // ignore: unused_field
  final $Res Function(MoviesState) _then;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$MoviesStateCopyWithImpl<$Res>
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
    return 'MoviesState.loading()';
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
    @required Result success(List<Movie> list),
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
    Result success(List<Movie> list),
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

abstract class _Loading implements MoviesState {
  const factory _Loading() = _$_Loading;
}

abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({List<Movie> list});
}

class __$SuccessCopyWithImpl<$Res> extends _$MoviesStateCopyWithImpl<$Res>
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
      list == freezed ? _value.list : list as List<Movie>,
    ));
  }
}

class _$_Success implements _Success {
  const _$_Success(this.list) : assert(list != null);

  @override
  final List<Movie> list;

  @override
  String toString() {
    return 'MoviesState.success(list: $list)';
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
    @required Result success(List<Movie> list),
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
    Result success(List<Movie> list),
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

abstract class _Success implements MoviesState {
  const factory _Success(List<Movie> list) = _$_Success;

  List<Movie> get list;
  _$SuccessCopyWith<_Success> get copyWith;
}

abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$FailedCopyWithImpl<$Res> extends _$MoviesStateCopyWithImpl<$Res>
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
    return 'MoviesState.failed(message: $message)';
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
    @required Result success(List<Movie> list),
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
    Result success(List<Movie> list),
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

abstract class _Failed implements MoviesState {
  const factory _Failed(String message) = _$_Failed;

  String get message;
  _$FailedCopyWith<_Failed> get copyWith;
}
