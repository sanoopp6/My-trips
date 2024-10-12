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
    @HiveField(2) @Default(0) double startLoclatitude,
    @HiveField(3) @Default(0) double startLoclongitude,
  }) = _Trip;

  factory Trip.fromJson(dynamic json) => _$TripFromJson(json);
}
