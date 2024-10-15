import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mytrips/features/history/presentation/providers/state/trip_history_state.dart';
import 'package:mytrips/features/navigation/presentation/providers/state/navigation_state.dart';
import 'package:mytrips/services/trip_cache_service/domain/repository/trip_cache_repository.dart';
import 'package:mytrips/shared/domain/models/TripLocation/trip_location_model.dart';
import 'package:mytrips/shared/domain/models/trip/trip_model.dart';

class TripHistoryStateNotifier extends StateNotifier<TripHistoryState> {
  TripHistoryStateNotifier({required this.tripRepository})
      : super(const TripHistoryState.initial());

  final TripRepository tripRepository;

  Future<void> getSavedTrips() async {
    state = const TripHistoryState.loading();
    final response = await tripRepository.getAllTrips();
    state = TripHistoryState.tripsFetched(response);
  }

  Future<void> saveTrip(Trip trip) async {
    state = const TripHistoryState.loading();
    final response = await tripRepository.saveTrip(trip: trip);
  }
}
