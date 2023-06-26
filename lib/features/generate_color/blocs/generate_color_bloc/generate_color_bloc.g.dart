// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_color_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenerateColorState _$$_GenerateColorStateFromJson(
        Map<String, dynamic> json) =>
    _$_GenerateColorState(
      backfroundColor: AppColorModel.fromJson(
          json['backfroundColor'] as Map<String, dynamic>),
      textColorsList: (json['textColorsList'] as List<dynamic>)
          .map((e) => AppColorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      word: json['word'] as String? ?? GenerateColorBloc.defauldeWord,
    );

Map<String, dynamic> _$$_GenerateColorStateToJson(
        _$_GenerateColorState instance) =>
    <String, dynamic>{
      'backfroundColor': instance.backfroundColor,
      'textColorsList': instance.textColorsList,
      'word': instance.word,
    };
