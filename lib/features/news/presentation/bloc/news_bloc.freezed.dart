// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NewsEventTearOff {
  const _$NewsEventTearOff();

// ignore: unused_element
  _FetchNews fetchNews() {
    return const _FetchNews();
  }
}

// ignore: unused_element
const $NewsEvent = _$NewsEventTearOff();

mixin _$NewsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchNews(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchNews(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchNews(_FetchNews value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchNews(_FetchNews value),
    @required Result orElse(),
  });
}

abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res>;
}

class _$NewsEventCopyWithImpl<$Res> implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  final NewsEvent _value;
  // ignore: unused_field
  final $Res Function(NewsEvent) _then;
}

abstract class _$FetchNewsCopyWith<$Res> {
  factory _$FetchNewsCopyWith(
          _FetchNews value, $Res Function(_FetchNews) then) =
      __$FetchNewsCopyWithImpl<$Res>;
}

class __$FetchNewsCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements _$FetchNewsCopyWith<$Res> {
  __$FetchNewsCopyWithImpl(_FetchNews _value, $Res Function(_FetchNews) _then)
      : super(_value, (v) => _then(v as _FetchNews));

  @override
  _FetchNews get _value => super._value as _FetchNews;
}

class _$_FetchNews implements _FetchNews {
  const _$_FetchNews();

  @override
  String toString() {
    return 'NewsEvent.fetchNews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchNews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchNews(),
  }) {
    assert(fetchNews != null);
    return fetchNews();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchNews(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchNews != null) {
      return fetchNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchNews(_FetchNews value),
  }) {
    assert(fetchNews != null);
    return fetchNews(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchNews(_FetchNews value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchNews != null) {
      return fetchNews(this);
    }
    return orElse();
  }
}

abstract class _FetchNews implements NewsEvent {
  const factory _FetchNews() = _$_FetchNews;
}

class _$NewsStateTearOff {
  const _$NewsStateTearOff();

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Success success(ArticlesList list) {
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
const $NewsState = _$NewsStateTearOff();

mixin _$NewsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result success(ArticlesList list),
    @required Result failed(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result success(ArticlesList list),
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

abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
}

class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
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
    return 'NewsState.loading()';
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
    @required Result success(ArticlesList list),
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
    Result success(ArticlesList list),
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

abstract class _Loading implements NewsState {
  const factory _Loading() = _$_Loading;
}

abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({ArticlesList list});
}

class __$SuccessCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
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
      list == freezed ? _value.list : list as ArticlesList,
    ));
  }
}

class _$_Success implements _Success {
  const _$_Success(this.list) : assert(list != null);

  @override
  final ArticlesList list;

  @override
  String toString() {
    return 'NewsState.success(list: $list)';
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
    @required Result success(ArticlesList list),
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
    Result success(ArticlesList list),
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

abstract class _Success implements NewsState {
  const factory _Success(ArticlesList list) = _$_Success;

  ArticlesList get list;
  _$SuccessCopyWith<_Success> get copyWith;
}

abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$FailedCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
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
    return 'NewsState.failed(message: $message)';
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
    @required Result success(ArticlesList list),
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
    Result success(ArticlesList list),
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

abstract class _Failed implements NewsState {
  const factory _Failed(String message) = _$_Failed;

  String get message;
  _$FailedCopyWith<_Failed> get copyWith;
}
