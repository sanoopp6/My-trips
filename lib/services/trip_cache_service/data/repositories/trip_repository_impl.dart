import 'package:mytrips/services/trip_cache_service/data/datasource/trip_local_datasource.dart';
import 'package:mytrips/services/trip_cache_service/domain/repository/trip_cache_repository.dart';
import 'package:mytrips/shared/domain/models/trip/trip_model.dart';

class TripRepositoryImpl extends TripRepository {
  final TripDataSource dataSource;

  TripRepositoryImpl(this.dataSource);

  @override
  Future<bool> deleteTrip(String id) {
    return dataSource.deleteTrip(id);
  }

  @override
  Future<TripsList> getAllTrips() {
    return dataSource.getAllTrips();
  }

  @override
  Future<Trip?> getTrip(String id) {
    return dataSource.getTrip(id);
  }

  @override
  Future<bool> saveTrip({required Trip trip}) {
    return dataSource.saveTrip(trip: trip);
  }
}
