// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'awesome_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AwesomeEventTearOff {
  const _$AwesomeEventTearOff();

// ignore: unused_element
  _Pressed pressed() {
    return const _Pressed();
  }
}

// ignore: unused_element
const $AwesomeEvent = _$AwesomeEventTearOff();

mixin _$AwesomeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pressed(_Pressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pressed(_Pressed value),
    @required Result orElse(),
  });
}

abstract class $AwesomeEventCopyWith<$Res> {
  factory $AwesomeEventCopyWith(
          AwesomeEvent value, $Res Function(AwesomeEvent) then) =
      _$AwesomeEventCopyWithImpl<$Res>;
}

class _$AwesomeEventCopyWithImpl<$Res> implements $AwesomeEventCopyWith<$Res> {
  _$AwesomeEventCopyWithImpl(this._value, this._then);

  final AwesomeEvent _value;
  // ignore: unused_field
  final $Res Function(AwesomeEvent) _then;
}

abstract class _$PressedCopyWith<$Res> {
  factory _$PressedCopyWith(_Pressed value, $Res Function(_Pressed) then) =
      __$PressedCopyWithImpl<$Res>;
}

class __$PressedCopyWithImpl<$Res> extends _$AwesomeEventCopyWithImpl<$Res>
    implements _$PressedCopyWith<$Res> {
  __$PressedCopyWithImpl(_Pressed _value, $Res Function(_Pressed) _then)
      : super(_value, (v) => _then(v as _Pressed));

  @override
  _Pressed get _value => super._value as _Pressed;
}

class _$_Pressed implements _Pressed {
  const _$_Pressed();

  @override
  String toString() {
    return 'AwesomeEvent.pressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Pressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pressed(),
  }) {
    assert(pressed != null);
    return pressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pressed != null) {
      return pressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pressed(_Pressed value),
  }) {
    assert(pressed != null);
    return pressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pressed(_Pressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pressed != null) {
      return pressed(this);
    }
    return orElse();
  }
}

abstract class _Pressed implements AwesomeEvent {
  const factory _Pressed() = _$_Pressed;
}

class _$AwesomeStateTearOff {
  const _$AwesomeStateTearOff();

// ignore: unused_element
  _Initial initial(int count) {
    return _Initial(
      count,
    );
  }

// ignore: unused_element
  _Completed completed(int count) {
    return _Completed(
      count,
    );
  }
}

// ignore: unused_element
const $AwesomeState = _$AwesomeStateTearOff();

mixin _$AwesomeState {
  int get count;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(int count),
    @required Result completed(int count),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int count),
    Result completed(int count),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result completed(_Completed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result completed(_Completed value),
    @required Result orElse(),
  });

  $AwesomeStateCopyWith<AwesomeState> get copyWith;
}

abstract class $AwesomeStateCopyWith<$Res> {
  factory $AwesomeStateCopyWith(
          AwesomeState value, $Res Function(AwesomeState) then) =
      _$AwesomeStateCopyWithImpl<$Res>;
  $Res call({int count});
}

class _$AwesomeStateCopyWithImpl<$Res> implements $AwesomeStateCopyWith<$Res> {
  _$AwesomeStateCopyWithImpl(this._value, this._then);

  final AwesomeState _value;
  // ignore: unused_field
  final $Res Function(AwesomeState) _then;

  @override
  $Res call({
    Object count = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

abstract class _$InitialCopyWith<$Res> implements $AwesomeStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({int count});
}

class __$InitialCopyWithImpl<$Res> extends _$AwesomeStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object count = freezed,
  }) {
    return _then(_Initial(
      count == freezed ? _value.count : count as int,
    ));
  }
}

class _$_Initial implements _Initial {
  const _$_Initial(this.count) : assert(count != null);

  @override
  final int count;

  @override
  String toString() {
    return 'AwesomeState.initial(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(count);

  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(int count),
    @required Result completed(int count),
  }) {
    assert(initial != null);
    assert(completed != null);
    return initial(count);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int count),
    Result completed(int count),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result completed(_Completed value),
  }) {
    assert(initial != null);
    assert(completed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result completed(_Completed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AwesomeState {
  const factory _Initial(int count) = _$_Initial;

  @override
  int get count;
  @override
  _$InitialCopyWith<_Initial> get copyWith;
}

abstract class _$CompletedCopyWith<$Res>
    implements $AwesomeStateCopyWith<$Res> {
  factory _$CompletedCopyWith(
          _Completed value, $Res Function(_Completed) then) =
      __$CompletedCopyWithImpl<$Res>;
  @override
  $Res call({int count});
}

class __$CompletedCopyWithImpl<$Res> extends _$AwesomeStateCopyWithImpl<$Res>
    implements _$CompletedCopyWith<$Res> {
  __$CompletedCopyWithImpl(_Completed _value, $Res Function(_Completed) _then)
      : super(_value, (v) => _then(v as _Completed));

  @override
  _Completed get _value => super._value as _Completed;

  @override
  $Res call({
    Object count = freezed,
  }) {
    return _then(_Completed(
      count == freezed ? _value.count : count as int,
    ));
  }
}

class _$_Completed implements _Completed {
  const _$_Completed(this.count) : assert(count != null);

  @override
  final int count;

  @override
  String toString() {
    return 'AwesomeState.completed(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Completed &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(count);

  @override
  _$CompletedCopyWith<_Completed> get copyWith =>
      __$CompletedCopyWithImpl<_Completed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(int count),
    @required Result completed(int count),
  }) {
    assert(initial != null);
    assert(completed != null);
    return completed(count);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(int count),
    Result completed(int count),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (completed != null) {
      return completed(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result completed(_Completed value),
  }) {
    assert(initial != null);
    assert(completed != null);
    return completed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result completed(_Completed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements AwesomeState {
  const factory _Completed(int count) = _$_Completed;

  @override
  int get count;
  @override
  _$CompletedCopyWith<_Completed> get copyWith;
}
