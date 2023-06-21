// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_color_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppColorModel _$AppColorModelFromJson(Map<String, dynamic> json) {
  return _AppColorModel.fromJson(json);
}

/// @nodoc
mixin _$AppColorModel {
  int get alpha => throw _privateConstructorUsedError;
  int get red => throw _privateConstructorUsedError;
  int get green => throw _privateConstructorUsedError;
  int get blue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppColorModelCopyWith<AppColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppColorModelCopyWith<$Res> {
  factory $AppColorModelCopyWith(
          AppColorModel value, $Res Function(AppColorModel) then) =
      _$AppColorModelCopyWithImpl<$Res, AppColorModel>;
  @useResult
  $Res call({int alpha, int red, int green, int blue});
}

/// @nodoc
class _$AppColorModelCopyWithImpl<$Res, $Val extends AppColorModel>
    implements $AppColorModelCopyWith<$Res> {
  _$AppColorModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_AppColorModelCopyWith<$Res>
    implements $AppColorModelCopyWith<$Res> {
  factory _$$_AppColorModelCopyWith(
          _$_AppColorModel value, $Res Function(_$_AppColorModel) then) =
      __$$_AppColorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int alpha, int red, int green, int blue});
}

/// @nodoc
class __$$_AppColorModelCopyWithImpl<$Res>
    extends _$AppColorModelCopyWithImpl<$Res, _$_AppColorModel>
    implements _$$_AppColorModelCopyWith<$Res> {
  __$$_AppColorModelCopyWithImpl(
      _$_AppColorModel _value, $Res Function(_$_AppColorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alpha = null,
    Object? red = null,
    Object? green = null,
    Object? blue = null,
  }) {
    return _then(_$_AppColorModel(
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
@JsonSerializable()
class _$_AppColorModel extends _AppColorModel with DiagnosticableTreeMixin {
  const _$_AppColorModel(
      {required this.alpha,
      required this.red,
      required this.green,
      required this.blue})
      : assert(0 <= alpha && alpha <= 255),
        assert(0 <= red && red <= 255),
        assert(0 <= green && green <= 255),
        assert(0 <= blue && blue <= 255),
        super._();

  factory _$_AppColorModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppColorModelFromJson(json);

  @override
  final int alpha;
  @override
  final int red;
  @override
  final int green;
  @override
  final int blue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppColorModel(alpha: $alpha, red: $red, green: $green, blue: $blue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppColorModel'))
      ..add(DiagnosticsProperty('alpha', alpha))
      ..add(DiagnosticsProperty('red', red))
      ..add(DiagnosticsProperty('green', green))
      ..add(DiagnosticsProperty('blue', blue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppColorModel &&
            (identical(other.alpha, alpha) || other.alpha == alpha) &&
            (identical(other.red, red) || other.red == red) &&
            (identical(other.green, green) || other.green == green) &&
            (identical(other.blue, blue) || other.blue == blue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, alpha, red, green, blue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppColorModelCopyWith<_$_AppColorModel> get copyWith =>
      __$$_AppColorModelCopyWithImpl<_$_AppColorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppColorModelToJson(
      this,
    );
  }
}

abstract class _AppColorModel extends AppColorModel {
  const factory _AppColorModel(
      {required final int alpha,
      required final int red,
      required final int green,
      required final int blue}) = _$_AppColorModel;
  const _AppColorModel._() : super._();

  factory _AppColorModel.fromJson(Map<String, dynamic> json) =
      _$_AppColorModel.fromJson;

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
  _$$_AppColorModelCopyWith<_$_AppColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
