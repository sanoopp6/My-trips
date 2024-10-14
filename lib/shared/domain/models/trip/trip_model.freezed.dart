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
  double get startLocLatitude => throw _privateConstructorUsedError;
  @HiveField(3)
  double get startLocLongitude => throw _privateConstructorUsedError;
  @HiveField(4)
  String get endLocName => throw _privateConstructorUsedError;
  @HiveField(5)
  double get endLocLatitude => throw _privateConstructorUsedError;
  @HiveField(6)
  double get endLocLongitude => throw _privateConstructorUsedError;

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
      @HiveField(2) double startLocLatitude,
      @HiveField(3) double startLocLongitude,
      @HiveField(4) String endLocName,
      @HiveField(5) double endLocLatitude,
      @HiveField(6) double endLocLongitude});
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
    Object? startLocLatitude = null,
    Object? startLocLongitude = null,
    Object? endLocName = null,
    Object? endLocLatitude = null,
    Object? endLocLongitude = null,
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
      startLocLatitude: null == startLocLatitude
          ? _value.startLocLatitude
          : startLocLatitude // ignore: cast_nullable_to_non_nullable
              as double,
      startLocLongitude: null == startLocLongitude
          ? _value.startLocLongitude
          : startLocLongitude // ignore: cast_nullable_to_non_nullable
              as double,
      endLocName: null == endLocName
          ? _value.endLocName
          : endLocName // ignore: cast_nullable_to_non_nullable
              as String,
      endLocLatitude: null == endLocLatitude
          ? _value.endLocLatitude
          : endLocLatitude // ignore: cast_nullable_to_non_nullable
              as double,
      endLocLongitude: null == endLocLongitude
          ? _value.endLocLongitude
          : endLocLongitude // ignore: cast_nullable_to_non_nullable
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
      @HiveField(2) double startLocLatitude,
      @HiveField(3) double startLocLongitude,
      @HiveField(4) String endLocName,
      @HiveField(5) double endLocLatitude,
      @HiveField(6) double endLocLongitude});
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
    Object? startLocLatitude = null,
    Object? startLocLongitude = null,
    Object? endLocName = null,
    Object? endLocLatitude = null,
    Object? endLocLongitude = null,
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
      startLocLatitude: null == startLocLatitude
          ? _value.startLocLatitude
          : startLocLatitude // ignore: cast_nullable_to_non_nullable
              as double,
      startLocLongitude: null == startLocLongitude
          ? _value.startLocLongitude
          : startLocLongitude // ignore: cast_nullable_to_non_nullable
              as double,
      endLocName: null == endLocName
          ? _value.endLocName
          : endLocName // ignore: cast_nullable_to_non_nullable
              as String,
      endLocLatitude: null == endLocLatitude
          ? _value.endLocLatitude
          : endLocLatitude // ignore: cast_nullable_to_non_nullable
              as double,
      endLocLongitude: null == endLocLongitude
          ? _value.endLocLongitude
          : endLocLongitude // ignore: cast_nullable_to_non_nullable
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
      @HiveField(2) this.startLocLatitude = 0,
      @HiveField(3) this.startLocLongitude = 0,
      @HiveField(4) this.endLocName = '',
      @HiveField(5) this.endLocLatitude = 0,
      @HiveField(6) this.endLocLongitude = 0});

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
  final double startLocLatitude;
  @override
  @JsonKey()
  @HiveField(3)
  final double startLocLongitude;
  @override
  @JsonKey()
  @HiveField(4)
  final String endLocName;
  @override
  @JsonKey()
  @HiveField(5)
  final double endLocLatitude;
  @override
  @JsonKey()
  @HiveField(6)
  final double endLocLongitude;

  @override
  String toString() {
    return 'Trip(id: $id, startLocName: $startLocName, startLocLatitude: $startLocLatitude, startLocLongitude: $startLocLongitude, endLocName: $endLocName, endLocLatitude: $endLocLatitude, endLocLongitude: $endLocLongitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startLocName, startLocName) ||
                other.startLocName == startLocName) &&
            (identical(other.startLocLatitude, startLocLatitude) ||
                other.startLocLatitude == startLocLatitude) &&
            (identical(other.startLocLongitude, startLocLongitude) ||
                other.startLocLongitude == startLocLongitude) &&
            (identical(other.endLocName, endLocName) ||
                other.endLocName == endLocName) &&
            (identical(other.endLocLatitude, endLocLatitude) ||
                other.endLocLatitude == endLocLatitude) &&
            (identical(other.endLocLongitude, endLocLongitude) ||
                other.endLocLongitude == endLocLongitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      startLocName,
      startLocLatitude,
      startLocLongitude,
      endLocName,
      endLocLatitude,
      endLocLongitude);

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
      @HiveField(2) final double startLocLatitude,
      @HiveField(3) final double startLocLongitude,
      @HiveField(4) final String endLocName,
      @HiveField(5) final double endLocLatitude,
      @HiveField(6) final double endLocLongitude}) = _$TripImpl;

  factory _Trip.fromJson(Map<String, dynamic> json) = _$TripImpl.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String get startLocName;
  @override
  @HiveField(2)
  double get startLocLatitude;
  @override
  @HiveField(3)
  double get startLocLongitude;
  @override
  @HiveField(4)
  String get endLocName;
  @override
  @HiveField(5)
  double get endLocLatitude;
  @override
  @HiveField(6)
  double get endLocLongitude;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
