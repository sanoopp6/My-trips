import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mytrips/shared/domain/models/TripLocation/trip_location_model.dart';

part 'trip_model.freezed.dart';

part 'trip_model.g.dart';

typedef TripsList = List<Trip>;

@freezed
@HiveType(typeId: 0)
class Trip with _$Trip {
  factory Trip(
      {@HiveField(0) String? id,
      @HiveField(1) @Default(null) TripLocation? startLocation,
      @HiveField(2) @Default(null) TripLocation? endLocation}) = _Trip;

  factory Trip.fromJson(dynamic json) => _$TripFromJson(json);
}
