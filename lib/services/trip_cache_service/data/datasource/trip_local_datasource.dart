import 'package:hive/hive.dart';
import 'package:mytrips/shared/data/local/storage_service.dart';
import 'package:mytrips/shared/domain/models/trip/trip_model.dart';
import 'package:mytrips/shared/globals.dart';
import 'package:uuid/uuid.dart';

abstract class TripDataSource {
  String get tripStorageKey;

  Future<bool> saveTrip({required Trip trip});

  Future<Trip?> getTrip(String id);

  Future<bool> deleteTrip(String id);

  Future<TripsList> getAllTrips();
}

class TripLocalDataSource extends TripDataSource {
  TripLocalDataSource(this.storageService);

  final StorageService storageService;

  @override
  String get tripStorageKey => TRIP_LOCAL_STORAGE_KEY;

  @override
  Future<bool> saveTrip({required Trip trip}) async {
    try {
      Box<Trip> tripBox = await Hive.openBox<Trip>(tripStorageKey);
      final String tripId = Uuid().v4();
      trip = trip.copyWith(id: tripId);
      await tripBox.put(tripId, trip);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<Trip?> getTrip(String id) async {
    try {
      Box<Trip> tripBox = await Hive.openBox<Trip>(tripStorageKey);
      return tripBox.get(id);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> deleteTrip(String id) async {
    try {
      Box<Trip> tripBox = await Hive.openBox<Trip>(tripStorageKey);
      await tripBox.delete(id);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<TripsList> getAllTrips() async {
    try {
      Box<Trip> tripBox = await Hive.openBox<Trip>(tripStorageKey);
      return tripBox.values.toList();
    } catch (e) {
      return [];
    }
  }
}
