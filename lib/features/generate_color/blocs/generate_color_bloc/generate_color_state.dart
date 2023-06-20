part of 'generate_color_bloc.dart';

@freezed
class GenerateColorState with _$GenerateColorState {
  const factory GenerateColorState({
    required AppColorModel color,
  }) = _GenerateColorState;

  factory GenerateColorState.fromJson(Map<String, Object?> json) =>
      _$GenerateColorStateFromJson(json);
}
