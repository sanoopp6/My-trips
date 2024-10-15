import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mytrips/shared/domain/models/trip/trip_model.dart';

part 'trip_history_state.freezed.dart';

@freezed
abstract class TripHistoryState with _$TripHistoryState {
  const factory TripHistoryState.initial() = Initial;

  const factory TripHistoryState.loading() = Loading;

  const factory TripHistoryState.failure() = Failure;

  const factory TripHistoryState.tripsFetched(TripsList trips) = TripsFetched;
}
