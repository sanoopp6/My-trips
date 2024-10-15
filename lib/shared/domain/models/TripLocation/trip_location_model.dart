import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'trip_location_model.freezed.dart';
part 'trip_location_model.g.dart';


@freezed
class TripLocation with _$TripLocation {
  factory TripLocation({
    @Default('') String locName,
    @Default(0) double latitude,
    @Default(0) double longitude
  }) = _TripLocation;

  factory TripLocation.fromJson(dynamic json) => _$TripLocationFromJson(json);
}
