import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'generate_color_event.dart';
part 'generate_color_state.dart';
part 'generate_color_bloc.freezed.dart';

class GenerateColorBloc extends HydratedBloc<GenerateColorEvent, GenerateColorState> {
  static const _maxColor = 256;
  
  GenerateColorBloc()
      : super(
          GenerateColorState(
            alpha: Random().nextInt(_maxColor),
            red: Random().nextInt(_maxColor),
            green: Random().nextInt(_maxColor),
            blue: Random().nextInt(_maxColor),
          ),
        ) {
    on<_generateColor>((event, emit) {
      emit(
        GenerateColorState(
          alpha: Random().nextInt(_maxColor),
          red: Random().nextInt(_maxColor),
          green: Random().nextInt(_maxColor),
          blue: Random().nextInt(_maxColor),
        ),
      );
    });
  }

  

  @override
  GenerateColorState? fromJson(Map<String, dynamic> json) {
    return GenerateColorState(
      alpha: json['alpha'] as int,
      red: json['red'] as int,
      green: json['green'] as int,
      blue: json['blue'] as int,
    );
  }

  @override
  Map<String, dynamic>? toJson(GenerateColorState state) {
    return {
      'alpha': state.alpha,
      'red': state.red,
      'green': state.green,
      'blue': state.blue,
    };
  }
}
