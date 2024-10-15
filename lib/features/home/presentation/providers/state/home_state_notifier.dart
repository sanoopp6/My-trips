import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mytrips/features/home/domain/repository/home_repository.dart';
import 'package:mytrips/features/home/presentation/providers/state/home_state.dart';
import 'package:mytrips/shared/domain/models/TripLocation/trip_location_model.dart';

class HomeStateNotifier extends StateNotifier<HomeState> {
  HomeStateNotifier({required this.homeRepository})
      : super(const HomeState.initial());

  final HomeRepository homeRepository;

  Future<void> getRoute(
      {required TripLocation startLocation,
      required TripLocation endLocation}) async {
    state = const HomeState.loading();

    final response = await homeRepository.getRoute(
        startLocation: startLocation, endLocation: endLocation);

    state = HomeState.routeFetched(response);
  }
}
