// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Trip _$TripFromJson(Map<String, dynamic> json) {
  return _Trip.fromJson(json);
}

/// @nodoc
mixin _$Trip {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get startLocName => throw _privateConstructorUsedError;
  @HiveField(2)
  double get startLoclatitude => throw _privateConstructorUsedError;
  @HiveField(3)
  double get startLoclongitude => throw _privateConstructorUsedError;

  /// Serializes this Trip to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res, Trip>;
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String startLocName,
      @HiveField(2) double startLoclatitude,
      @HiveField(3) double startLoclongitude});
}

/// @nodoc
class _$TripCopyWithImpl<$Res, $Val extends Trip>
    implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startLocName = null,
    Object? startLoclatitude = null,
    Object? startLoclongitude = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      startLocName: null == startLocName
          ? _value.startLocName
          : startLocName // ignore: cast_nullable_to_non_nullable
              as String,
      startLoclatitude: null == startLoclatitude
          ? _value.startLoclatitude
          : startLoclatitude // ignore: cast_nullable_to_non_nullable
              as double,
      startLoclongitude: null == startLoclongitude
          ? _value.startLoclongitude
          : startLoclongitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripImplCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$TripImplCopyWith(
          _$TripImpl value, $Res Function(_$TripImpl) then) =
      __$$TripImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String startLocName,
      @HiveField(2) double startLoclatitude,
      @HiveField(3) double startLoclongitude});
}

/// @nodoc
class __$$TripImplCopyWithImpl<$Res>
    extends _$TripCopyWithImpl<$Res, _$TripImpl>
    implements _$$TripImplCopyWith<$Res> {
  __$$TripImplCopyWithImpl(_$TripImpl _value, $Res Function(_$TripImpl) _then)
      : super(_value, _then);

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startLocName = null,
    Object? startLoclatitude = null,
    Object? startLoclongitude = null,
  }) {
    return _then(_$TripImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      startLocName: null == startLocName
          ? _value.startLocName
          : startLocName // ignore: cast_nullable_to_non_nullable
              as String,
      startLoclatitude: null == startLoclatitude
          ? _value.startLoclatitude
          : startLoclatitude // ignore: cast_nullable_to_non_nullable
              as double,
      startLoclongitude: null == startLoclongitude
          ? _value.startLoclongitude
          : startLoclongitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripImpl implements _Trip {
  _$TripImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.startLocName = '',
      @HiveField(2) this.startLoclatitude = 0,
      @HiveField(3) this.startLoclongitude = 0});

  factory _$TripImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripImplFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @JsonKey()
  @HiveField(1)
  final String startLocName;
  @override
  @JsonKey()
  @HiveField(2)
  final double startLoclatitude;
  @override
  @JsonKey()
  @HiveField(3)
  final double startLoclongitude;

  @override
  String toString() {
    return 'Trip(id: $id, startLocName: $startLocName, startLoclatitude: $startLoclatitude, startLoclongitude: $startLoclongitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startLocName, startLocName) ||
                other.startLocName == startLocName) &&
            (identical(other.startLoclatitude, startLoclatitude) ||
                other.startLoclatitude == startLoclatitude) &&
            (identical(other.startLoclongitude, startLoclongitude) ||
                other.startLoclongitude == startLoclongitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, startLocName, startLoclatitude, startLoclongitude);

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      __$$TripImplCopyWithImpl<_$TripImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripImplToJson(
      this,
    );
  }
}

abstract class _Trip implements Trip {
  factory _Trip(
      {@HiveField(0) final String? id,
      @HiveField(1) final String startLocName,
      @HiveField(2) final double startLoclatitude,
      @HiveField(3) final double startLoclongitude}) = _$TripImpl;

  factory _Trip.fromJson(Map<String, dynamic> json) = _$TripImpl.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String get startLocName;
  @override
  @HiveField(2)
  double get startLoclatitude;
  @override
  @HiveField(3)
  double get startLoclongitude;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
