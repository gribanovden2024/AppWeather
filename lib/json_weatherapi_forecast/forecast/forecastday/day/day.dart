import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'day_condition/day_condition.dart';


part 'day.freezed.dart';
part 'day.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
)
abstract class Day with _$Day {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    createToJson: true,
  )
  factory Day({
    required double maxtempC,
    required double mintempC,
    required double avgtempC,
    required double maxwindKph,
    required double uv,
    required double dailyChanceOfRain,
    required double dailyChanceOfSnow,
    required DayCondition condition,
  }) = _Day;

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}