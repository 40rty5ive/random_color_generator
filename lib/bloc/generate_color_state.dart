part of 'generate_color_bloc.dart';

@freezed
class GenerateColorState with _$GenerateColorState {
  const factory GenerateColorState({
    required int alpha,
    required int red,
    required int green,
    required int blue,
  }) = _GenerateColorState;
}
