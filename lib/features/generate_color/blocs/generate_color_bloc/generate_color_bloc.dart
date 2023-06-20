import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:random_color_generator/general_export.dart';

part 'generate_color_event.dart';
part 'generate_color_state.dart';
part 'generate_color_bloc.freezed.dart';
part 'generate_color_bloc.g.dart';

/// {@template generate_color_bloc}
/// A simple [HydratedBloc] that generates and stores a random color.
/// {@endtemplate}
class GenerateColorBloc
    extends HydratedBloc<GenerateColorEvent, GenerateColorState> {
  /// {@macro generate_color_bloc}
  GenerateColorBloc()
      : super(
          GenerateColorState(
            color: AppColorModel.random(),
          ),
        ) {
    on<_GenerateColorEvent>(_generateColor);
  }

  void _generateColor(
    _GenerateColorEvent event,
    Emitter<GenerateColorState> emit,
  ) {
    emit(
      GenerateColorState(
        color: AppColorModel.random(),
      ),
    );
  }

  @override
  GenerateColorState? fromJson(Map<String, dynamic> json) {
    return GenerateColorState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(GenerateColorState state) {
    return state.toJson();
  }
}
