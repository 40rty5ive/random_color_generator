// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_color_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GenerateColorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() generateColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? generateColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? generateColor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenerateColorEvent value) generateColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenerateColorEvent value)? generateColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenerateColorEvent value)? generateColor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateColorEventCopyWith<$Res> {
  factory $GenerateColorEventCopyWith(
          GenerateColorEvent value, $Res Function(GenerateColorEvent) then) =
      _$GenerateColorEventCopyWithImpl<$Res, GenerateColorEvent>;
}

/// @nodoc
class _$GenerateColorEventCopyWithImpl<$Res, $Val extends GenerateColorEvent>
    implements $GenerateColorEventCopyWith<$Res> {
  _$GenerateColorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GenerateColorEventCopyWith<$Res> {
  factory _$$_GenerateColorEventCopyWith(_$_GenerateColorEvent value,
          $Res Function(_$_GenerateColorEvent) then) =
      __$$_GenerateColorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GenerateColorEventCopyWithImpl<$Res>
    extends _$GenerateColorEventCopyWithImpl<$Res, _$_GenerateColorEvent>
    implements _$$_GenerateColorEventCopyWith<$Res> {
  __$$_GenerateColorEventCopyWithImpl(
      _$_GenerateColorEvent _value, $Res Function(_$_GenerateColorEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GenerateColorEvent implements _GenerateColorEvent {
  const _$_GenerateColorEvent();

  @override
  String toString() {
    return 'GenerateColorEvent.generateColor()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GenerateColorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() generateColor,
  }) {
    return generateColor();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? generateColor,
  }) {
    return generateColor?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? generateColor,
    required TResult orElse(),
  }) {
    if (generateColor != null) {
      return generateColor();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenerateColorEvent value) generateColor,
  }) {
    return generateColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenerateColorEvent value)? generateColor,
  }) {
    return generateColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenerateColorEvent value)? generateColor,
    required TResult orElse(),
  }) {
    if (generateColor != null) {
      return generateColor(this);
    }
    return orElse();
  }
}

abstract class _GenerateColorEvent implements GenerateColorEvent {
  const factory _GenerateColorEvent() = _$_GenerateColorEvent;
}

GenerateColorState _$GenerateColorStateFromJson(Map<String, dynamic> json) {
  return _GenerateColorState.fromJson(json);
}

/// @nodoc
mixin _$GenerateColorState {
  AppColorModel get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerateColorStateCopyWith<GenerateColorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateColorStateCopyWith<$Res> {
  factory $GenerateColorStateCopyWith(
          GenerateColorState value, $Res Function(GenerateColorState) then) =
      _$GenerateColorStateCopyWithImpl<$Res, GenerateColorState>;
  @useResult
  $Res call({AppColorModel color});

  $AppColorModelCopyWith<$Res> get color;
}

/// @nodoc
class _$GenerateColorStateCopyWithImpl<$Res, $Val extends GenerateColorState>
    implements $GenerateColorStateCopyWith<$Res> {
  _$GenerateColorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as AppColorModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppColorModelCopyWith<$Res> get color {
    return $AppColorModelCopyWith<$Res>(_value.color, (value) {
      return _then(_value.copyWith(color: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GenerateColorStateCopyWith<$Res>
    implements $GenerateColorStateCopyWith<$Res> {
  factory _$$_GenerateColorStateCopyWith(_$_GenerateColorState value,
          $Res Function(_$_GenerateColorState) then) =
      __$$_GenerateColorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppColorModel color});

  @override
  $AppColorModelCopyWith<$Res> get color;
}

/// @nodoc
class __$$_GenerateColorStateCopyWithImpl<$Res>
    extends _$GenerateColorStateCopyWithImpl<$Res, _$_GenerateColorState>
    implements _$$_GenerateColorStateCopyWith<$Res> {
  __$$_GenerateColorStateCopyWithImpl(
      _$_GenerateColorState _value, $Res Function(_$_GenerateColorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$_GenerateColorState(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as AppColorModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenerateColorState implements _GenerateColorState {
  const _$_GenerateColorState({required this.color});

  factory _$_GenerateColorState.fromJson(Map<String, dynamic> json) =>
      _$$_GenerateColorStateFromJson(json);

  @override
  final AppColorModel color;

  @override
  String toString() {
    return 'GenerateColorState(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerateColorState &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerateColorStateCopyWith<_$_GenerateColorState> get copyWith =>
      __$$_GenerateColorStateCopyWithImpl<_$_GenerateColorState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenerateColorStateToJson(
      this,
    );
  }
}

abstract class _GenerateColorState implements GenerateColorState {
  const factory _GenerateColorState({required final AppColorModel color}) =
      _$_GenerateColorState;

  factory _GenerateColorState.fromJson(Map<String, dynamic> json) =
      _$_GenerateColorState.fromJson;

  @override
  AppColorModel get color;
  @override
  @JsonKey(ignore: true)
  _$$_GenerateColorStateCopyWith<_$_GenerateColorState> get copyWith =>
      throw _privateConstructorUsedError;
}
