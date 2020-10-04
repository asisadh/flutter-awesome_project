// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'github_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GithubEventTearOff {
  const _$GithubEventTearOff();

// ignore: unused_element
  _FetchRepo fetchRepo() {
    return const _FetchRepo();
  }
}

// ignore: unused_element
const $GithubEvent = _$GithubEventTearOff();

mixin _$GithubEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchRepo(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchRepo(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchRepo(_FetchRepo value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchRepo(_FetchRepo value),
    @required Result orElse(),
  });
}

abstract class $GithubEventCopyWith<$Res> {
  factory $GithubEventCopyWith(
          GithubEvent value, $Res Function(GithubEvent) then) =
      _$GithubEventCopyWithImpl<$Res>;
}

class _$GithubEventCopyWithImpl<$Res> implements $GithubEventCopyWith<$Res> {
  _$GithubEventCopyWithImpl(this._value, this._then);

  final GithubEvent _value;
  // ignore: unused_field
  final $Res Function(GithubEvent) _then;
}

abstract class _$FetchRepoCopyWith<$Res> {
  factory _$FetchRepoCopyWith(
          _FetchRepo value, $Res Function(_FetchRepo) then) =
      __$FetchRepoCopyWithImpl<$Res>;
}

class __$FetchRepoCopyWithImpl<$Res> extends _$GithubEventCopyWithImpl<$Res>
    implements _$FetchRepoCopyWith<$Res> {
  __$FetchRepoCopyWithImpl(_FetchRepo _value, $Res Function(_FetchRepo) _then)
      : super(_value, (v) => _then(v as _FetchRepo));

  @override
  _FetchRepo get _value => super._value as _FetchRepo;
}

class _$_FetchRepo implements _FetchRepo {
  const _$_FetchRepo();

  @override
  String toString() {
    return 'GithubEvent.fetchRepo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchRepo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchRepo(),
  }) {
    assert(fetchRepo != null);
    return fetchRepo();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchRepo(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchRepo != null) {
      return fetchRepo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchRepo(_FetchRepo value),
  }) {
    assert(fetchRepo != null);
    return fetchRepo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchRepo(_FetchRepo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchRepo != null) {
      return fetchRepo(this);
    }
    return orElse();
  }
}

abstract class _FetchRepo implements GithubEvent {
  const factory _FetchRepo() = _$_FetchRepo;
}

class _$GithubStateTearOff {
  const _$GithubStateTearOff();

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Success success(List<Github> list) {
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
const $GithubState = _$GithubStateTearOff();

mixin _$GithubState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result success(List<Github> list),
    @required Result failed(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result success(List<Github> list),
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

abstract class $GithubStateCopyWith<$Res> {
  factory $GithubStateCopyWith(
          GithubState value, $Res Function(GithubState) then) =
      _$GithubStateCopyWithImpl<$Res>;
}

class _$GithubStateCopyWithImpl<$Res> implements $GithubStateCopyWith<$Res> {
  _$GithubStateCopyWithImpl(this._value, this._then);

  final GithubState _value;
  // ignore: unused_field
  final $Res Function(GithubState) _then;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$GithubStateCopyWithImpl<$Res>
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
    return 'GithubState.loading()';
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
    @required Result success(List<Github> list),
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
    Result success(List<Github> list),
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

abstract class _Loading implements GithubState {
  const factory _Loading() = _$_Loading;
}

abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({List<Github> list});
}

class __$SuccessCopyWithImpl<$Res> extends _$GithubStateCopyWithImpl<$Res>
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
      list == freezed ? _value.list : list as List<Github>,
    ));
  }
}

class _$_Success implements _Success {
  const _$_Success(this.list) : assert(list != null);

  @override
  final List<Github> list;

  @override
  String toString() {
    return 'GithubState.success(list: $list)';
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
    @required Result success(List<Github> list),
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
    Result success(List<Github> list),
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

abstract class _Success implements GithubState {
  const factory _Success(List<Github> list) = _$_Success;

  List<Github> get list;
  _$SuccessCopyWith<_Success> get copyWith;
}

abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$FailedCopyWithImpl<$Res> extends _$GithubStateCopyWithImpl<$Res>
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
    return 'GithubState.failed(message: $message)';
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
    @required Result success(List<Github> list),
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
    Result success(List<Github> list),
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

abstract class _Failed implements GithubState {
  const factory _Failed(String message) = _$_Failed;

  String get message;
  _$FailedCopyWith<_Failed> get copyWith;
}
