import 'package:mytrips/shared/domain/models/TripLocation/trip_location_model.dart';

abstract class NavigationRepository {
  Future<dynamic> getRoute(
      {required TripLocation startLocation, required TripLocation endLocation});
}
