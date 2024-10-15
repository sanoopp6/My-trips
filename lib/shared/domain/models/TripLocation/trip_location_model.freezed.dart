// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripLocation _$TripLocationFromJson(Map<String, dynamic> json) {
  return _TripLocation.fromJson(json);
}

/// @nodoc
mixin _$TripLocation {
  String get locName => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  /// Serializes this TripLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripLocationCopyWith<TripLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripLocationCopyWith<$Res> {
  factory $TripLocationCopyWith(
          TripLocation value, $Res Function(TripLocation) then) =
      _$TripLocationCopyWithImpl<$Res, TripLocation>;
  @useResult
  $Res call({String locName, double latitude, double longitude});
}

/// @nodoc
class _$TripLocationCopyWithImpl<$Res, $Val extends TripLocation>
    implements $TripLocationCopyWith<$Res> {
  _$TripLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locName = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      locName: null == locName
          ? _value.locName
          : locName // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripLocationImplCopyWith<$Res>
    implements $TripLocationCopyWith<$Res> {
  factory _$$TripLocationImplCopyWith(
          _$TripLocationImpl value, $Res Function(_$TripLocationImpl) then) =
      __$$TripLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String locName, double latitude, double longitude});
}

/// @nodoc
class __$$TripLocationImplCopyWithImpl<$Res>
    extends _$TripLocationCopyWithImpl<$Res, _$TripLocationImpl>
    implements _$$TripLocationImplCopyWith<$Res> {
  __$$TripLocationImplCopyWithImpl(
      _$TripLocationImpl _value, $Res Function(_$TripLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locName = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$TripLocationImpl(
      locName: null == locName
          ? _value.locName
          : locName // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripLocationImpl implements _TripLocation {
  _$TripLocationImpl(
      {this.locName = '', this.latitude = 0, this.longitude = 0});

  factory _$TripLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripLocationImplFromJson(json);

  @override
  @JsonKey()
  final String locName;
  @override
  @JsonKey()
  final double latitude;
  @override
  @JsonKey()
  final double longitude;

  @override
  String toString() {
    return 'TripLocation(locName: $locName, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripLocationImpl &&
            (identical(other.locName, locName) || other.locName == locName) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, locName, latitude, longitude);

  /// Create a copy of TripLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripLocationImplCopyWith<_$TripLocationImpl> get copyWith =>
      __$$TripLocationImplCopyWithImpl<_$TripLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripLocationImplToJson(
      this,
    );
  }
}

abstract class _TripLocation implements TripLocation {
  factory _TripLocation(
      {final String locName,
      final double latitude,
      final double longitude}) = _$TripLocationImpl;

  factory _TripLocation.fromJson(Map<String, dynamic> json) =
      _$TripLocationImpl.fromJson;

  @override
  String get locName;
  @override
  double get latitude;
  @override
  double get longitude;

  /// Create a copy of TripLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripLocationImplCopyWith<_$TripLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
