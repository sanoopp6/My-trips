import 'package:mytrips/shared/domain/models/TripLocation/trip_location_model.dart';

abstract class HomeDataSource {

  Future<List<TripLocation>> getRoute(
      {required TripLocation startLocation, required TripLocation endLocation});

}
