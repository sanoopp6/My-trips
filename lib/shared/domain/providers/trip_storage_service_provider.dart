import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mytrips/shared/data/local/trip_storage_service.dart';

final tripStorageServiceProvider = Provider<TripStorageService>((ref) {
  final tripStorageService = TripStorageService();
  tripStorageService.init();
  return tripStorageService;
});