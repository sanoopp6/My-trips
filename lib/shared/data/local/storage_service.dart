import 'package:mytrips/shared/domain/models/trip/trip_model.dart';

abstract class StorageService {
  void init();

  bool get hasInitialized;

  Future<bool> remove(String key);

  Future<Object?> get(String key);

  Future<void> set(String key, Trip data);

  Future<void> clear();

  Future<bool> has(String key);
}
