import 'package:flutter/material.dart';
import 'package:random_color_generator/general_export.dart';

/// Extensions help to link the [Color] class of the part UI
/// and the [AppColorModel] class of the bloc layer
extension ColorConverting on AppColorModel {
  /// Convert the [AppColorModel] class to the [Color] class
  /// of the material package.
  Color toMaterialColor() {
    return Color.fromARGB(
      alpha,
      red,
      green,
      blue,
    );
  }
}
