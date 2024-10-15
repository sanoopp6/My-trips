import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mytrips/features/home/domain/repository/home_repository.dart';
import 'package:mytrips/features/home/presentation/providers/state/home_state.dart';
import 'package:mytrips/features/navigation/domain/repository/navigation_repository.dart';
import 'package:mytrips/features/navigation/presentation/providers/state/navigation_state.dart';
import 'package:mytrips/shared/domain/models/TripLocation/trip_location_model.dart';

class NavigationStateNotifier extends StateNotifier<NavigationState> {
  NavigationStateNotifier({required this.navigationRepository})
      : super(const NavigationState.initial());

  final NavigationRepository navigationRepository;

  Future<void> getRoute(
      {required TripLocation startLocation,
      required TripLocation endLocation}) async {

    state = const NavigationState.loading();
    final response = await navigationRepository.getRoute(
        startLocation: startLocation, endLocation: endLocation);
    state = NavigationState.routeFetched(response);
  }
}
