part of 'generate_color_bloc.dart';

/// Event being processed by [GenerateColorBloc].
@freezed
class GenerateColorEvent with _$GenerateColorEvent {
  /// Notifies bloc to color regeneration.
  const factory GenerateColorEvent.generateColor() = _GenerateColorEvent;
}
