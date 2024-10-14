// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TripAdapter extends TypeAdapter<Trip> {
  @override
  final int typeId = 0;

  @override
  Trip read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Trip(
      id: fields[0] as String?,
      startLocName: fields[1] as String,
      startLocLatitude: fields[2] as double,
      startLocLongitude: fields[3] as double,
      endLocName: fields[4] as String,
      endLocLatitude: fields[5] as double,
      endLocLongitude: fields[6] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Trip obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.startLocName)
      ..writeByte(2)
      ..write(obj.startLocLatitude)
      ..writeByte(3)
      ..write(obj.startLocLongitude)
      ..writeByte(4)
      ..write(obj.endLocName)
      ..writeByte(5)
      ..write(obj.endLocLatitude)
      ..writeByte(6)
      ..write(obj.endLocLongitude);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TripAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripImpl _$$TripImplFromJson(Map<String, dynamic> json) => _$TripImpl(
      id: json['id'] as String?,
      startLocName: json['startLocName'] as String? ?? '',
      startLocLatitude: (json['startLocLatitude'] as num?)?.toDouble() ?? 0,
      startLocLongitude: (json['startLocLongitude'] as num?)?.toDouble() ?? 0,
      endLocName: json['endLocName'] as String? ?? '',
      endLocLatitude: (json['endLocLatitude'] as num?)?.toDouble() ?? 0,
      endLocLongitude: (json['endLocLongitude'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$TripImplToJson(_$TripImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startLocName': instance.startLocName,
      'startLocLatitude': instance.startLocLatitude,
      'startLocLongitude': instance.startLocLongitude,
      'endLocName': instance.endLocName,
      'endLocLatitude': instance.endLocLatitude,
      'endLocLongitude': instance.endLocLongitude,
    };
