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
      startLoclatitude: fields[2] as double,
      startLoclongitude: fields[3] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Trip obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.startLocName)
      ..writeByte(2)
      ..write(obj.startLoclatitude)
      ..writeByte(3)
      ..write(obj.startLoclongitude);
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
      startLoclatitude: (json['startLoclatitude'] as num?)?.toDouble() ?? 0,
      startLoclongitude: (json['startLoclongitude'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$TripImplToJson(_$TripImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startLocName': instance.startLocName,
      'startLoclatitude': instance.startLoclatitude,
      'startLoclongitude': instance.startLoclongitude,
    };
