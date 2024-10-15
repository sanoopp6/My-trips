import 'dart:async';

import 'package:hive/hive.dart';
import 'package:mytrips/shared/data/local/storage_service.dart';
import 'package:mytrips/shared/domain/models/trip/trip_model.dart';
import 'package:mytrips/shared/globals.dart';

class TripStorageService implements StorageService {
  Box<Trip>? tripBox;
  final Completer<Box<Trip>> initCompleter = Completer<Box<Trip>>();

  @override
  void init() {
    initCompleter.complete(Hive.openBox<Trip>(TRIP_LOCAL_STORAGE_KEY));
  }

  @override
  Future<void> clear() {
    // TODO: implement clear
    throw UnimplementedError();
  }

  @override
  Future<Trip?> get(String key) async {
    tripBox = await initCompleter.future;
    return tripBox?.get(key);
  }

  @override
  Future<bool> has(String key) {
    // TODO: implement has
    throw UnimplementedError();
  }

  @override
  bool get hasInitialized => tripBox != null;

  @override
  Future<bool> remove(String key) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  Future<void> set(String key, Trip data) async {
    await tripBox?.add(data);
  }
}
