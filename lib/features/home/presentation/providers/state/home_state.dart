import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mytrips/shared/domain/models/TripLocation/trip_location_model.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;

  const factory HomeState.loading() = Loading;
  const factory HomeState.routeFetched(List<TripLocation> routes) = RouteFetched;

}
