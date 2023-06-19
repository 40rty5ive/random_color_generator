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
    required TResult Function(_generateColor value) generateColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_generateColor value)? generateColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_generateColor value)? generateColor,
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
abstract class _$$_generateColorCopyWith<$Res> {
  factory _$$_generateColorCopyWith(
          _$_generateColor value, $Res Function(_$_generateColor) then) =
      __$$_generateColorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_generateColorCopyWithImpl<$Res>
    extends _$GenerateColorEventCopyWithImpl<$Res, _$_generateColor>
    implements _$$_generateColorCopyWith<$Res> {
  __$$_generateColorCopyWithImpl(
      _$_generateColor _value, $Res Function(_$_generateColor) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_generateColor implements _generateColor {
  const _$_generateColor();

  @override
  String toString() {
    return 'GenerateColorEvent.generateColor()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_generateColor);
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
    required TResult Function(_generateColor value) generateColor,
  }) {
    return generateColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_generateColor value)? generateColor,
  }) {
    return generateColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_generateColor value)? generateColor,
    required TResult orElse(),
  }) {
    if (generateColor != null) {
      return generateColor(this);
    }
    return orElse();
  }
}

abstract class _generateColor implements GenerateColorEvent {
  const factory _generateColor() = _$_generateColor;
}

/// @nodoc
mixin _$GenerateColorState {
  int get alpha => throw _privateConstructorUsedError;
  int get red => throw _privateConstructorUsedError;
  int get green => throw _privateConstructorUsedError;
  int get blue => throw _privateConstructorUsedError;

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
  $Res call({int alpha, int red, int green, int blue});
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
    Object? alpha = null,
    Object? red = null,
    Object? green = null,
    Object? blue = null,
  }) {
    return _then(_value.copyWith(
      alpha: null == alpha
          ? _value.alpha
          : alpha // ignore: cast_nullable_to_non_nullable
              as int,
      red: null == red
          ? _value.red
          : red // ignore: cast_nullable_to_non_nullable
              as int,
      green: null == green
          ? _value.green
          : green // ignore: cast_nullable_to_non_nullable
              as int,
      blue: null == blue
          ? _value.blue
          : blue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
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
  $Res call({int alpha, int red, int green, int blue});
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
    Object? alpha = null,
    Object? red = null,
    Object? green = null,
    Object? blue = null,
  }) {
    return _then(_$_GenerateColorState(
      alpha: null == alpha
          ? _value.alpha
          : alpha // ignore: cast_nullable_to_non_nullable
              as int,
      red: null == red
          ? _value.red
          : red // ignore: cast_nullable_to_non_nullable
              as int,
      green: null == green
          ? _value.green
          : green // ignore: cast_nullable_to_non_nullable
              as int,
      blue: null == blue
          ? _value.blue
          : blue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GenerateColorState implements _GenerateColorState {
  const _$_GenerateColorState(
      {required this.alpha,
      required this.red,
      required this.green,
      required this.blue});

  @override
  final int alpha;
  @override
  final int red;
  @override
  final int green;
  @override
  final int blue;

  @override
  String toString() {
    return 'GenerateColorState(alpha: $alpha, red: $red, green: $green, blue: $blue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerateColorState &&
            (identical(other.alpha, alpha) || other.alpha == alpha) &&
            (identical(other.red, red) || other.red == red) &&
            (identical(other.green, green) || other.green == green) &&
            (identical(other.blue, blue) || other.blue == blue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alpha, red, green, blue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerateColorStateCopyWith<_$_GenerateColorState> get copyWith =>
      __$$_GenerateColorStateCopyWithImpl<_$_GenerateColorState>(
          this, _$identity);
}

abstract class _GenerateColorState implements GenerateColorState {
  const factory _GenerateColorState(
      {required final int alpha,
      required final int red,
      required final int green,
      required final int blue}) = _$_GenerateColorState;

  @override
  int get alpha;
  @override
  int get red;
  @override
  int get green;
  @override
  int get blue;
  @override
  @JsonKey(ignore: true)
  _$$_GenerateColorStateCopyWith<_$_GenerateColorState> get copyWith =>
      throw _privateConstructorUsedError;
}
