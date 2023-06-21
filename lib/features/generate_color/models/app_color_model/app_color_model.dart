import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_color_model.freezed.dart';
part 'app_color_model.g.dart';

/// {@template app_color_model}
/// A class to describe the color in the application.
/// {@endtemplate}
@freezed
class AppColorModel with _$AppColorModel {
  static const _maxARGBcomponentValue = 256;

  /// {@macro app_color_model}
  @Assert('0 <= alpha && alpha <= 255')
  @Assert('0 <= red && red <= 255')
  @Assert('0 <= green && green <= 255')
  @Assert('0 <= blue && blue <= 255')
  const factory AppColorModel({
    required int alpha,
    required int red,
    required int green,
    required int blue,
  }) = _AppColorModel;

  const AppColorModel._();

  /// A constructor that returns a random [AppColorModel].
  factory AppColorModel.random() {
    final random = Random();

    return AppColorModel(
      alpha: random.nextInt(_maxARGBcomponentValue),
      red: random.nextInt(_maxARGBcomponentValue),
      green: random.nextInt(_maxARGBcomponentValue),
      blue: random.nextInt(_maxARGBcomponentValue),
    );
  }

  /// Helps to parse the model from local memory.
  factory AppColorModel.fromJson(Map<String, Object?> json) =>
      _$AppColorModelFromJson(json);

  /// Formats in a user-friendly format.
  /// Example:
  /// ```dart
  /// AppColorModel(
  ///   alpha: 234,
  ///   red: 22,
  ///   green: 101,
  ///   blue: 25,
  /// );
  /// ```
  /// to:
  /// ```dart
  /// 'argb(234, 22, 101, 25'
  /// ```
  String formatToString() {
    return 'argb($alpha, $red, $green, $blue)';
  }
}
