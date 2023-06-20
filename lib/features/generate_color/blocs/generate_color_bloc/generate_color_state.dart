part of 'generate_color_bloc.dart';

/// State for [GenerateColorBloc].
@freezed
class GenerateColorState with _$GenerateColorState {
  /// The only state that has only one [AppColorModel] field.
  const factory GenerateColorState({
    required AppColorModel color,
  }) = _GenerateColorState;

  /// The constructor is used to process [GenerateColorBloc]`s state
  /// from local memory.
  factory GenerateColorState.fromJson(Map<String, Object?> json) =>
      _$GenerateColorStateFromJson(json);
}
