// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripLocationImpl _$$TripLocationImplFromJson(Map<String, dynamic> json) =>
    _$TripLocationImpl(
      locName: json['locName'] as String? ?? '',
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$TripLocationImplToJson(_$TripLocationImpl instance) =>
    <String, dynamic>{
      'locName': instance.locName,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
