import 'package:mytrips/shared/domain/models/trip/trip_model.dart';

abstract class TripRepository {
  Future<bool> saveTrip({required Trip trip});

  Future<Trip?> getTrip(String id);

  Future<bool> deleteTrip(String id);

  Future<TripsList> getAllTrips();
}
