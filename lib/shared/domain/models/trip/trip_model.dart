import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'trip_model.freezed.dart';
part 'trip_model.g.dart';

typedef TripsList = List<Trip>;

@freezed
@HiveType(typeId: 0)
class Trip with _$Trip {
  factory Trip({
    @HiveField(0) String? id,
    @HiveField(1) @Default('') String startLocName,
    @HiveField(2) @Default(0) double startLocLatitude,
    @HiveField(3) @Default(0) double startLocLongitude,
    @HiveField(4) @Default('') String endLocName,
    @HiveField(5) @Default(0) double endLocLatitude,
    @HiveField(6) @Default(0) double endLocLongitude,
  }) = _Trip;

  factory Trip.fromJson(dynamic json) => _$TripFromJson(json);
}
