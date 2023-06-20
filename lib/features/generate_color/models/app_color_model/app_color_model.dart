import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_color_model.freezed.dart';
part 'app_color_model.g.dart';

@freezed
class AppColorModel with _$AppColorModel {
  static const _maxColor = 256;

  const factory AppColorModel({
    required int alpha,
    required int red,
    required int green,
    required int blue,
  }) = _AppColorModel;

  factory AppColorModel.random() {
    final random = Random();

    return AppColorModel(
      alpha: random.nextInt(_maxColor),
      red: random.nextInt(_maxColor),
      green: random.nextInt(_maxColor),
      blue: random.nextInt(_maxColor),
    );
  }

  factory AppColorModel.fromJson(Map<String, Object?> json) => _$AppColorModelFromJson(json);
}
