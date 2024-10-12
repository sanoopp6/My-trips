import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mytrips/services/trip_cache_service/data/datasource/trip_local_datasource.dart';
import 'package:mytrips/services/trip_cache_service/data/repositories/trip_repository_impl.dart';
import 'package:mytrips/services/trip_cache_service/domain/repository/trip_cache_repository.dart';
import 'package:mytrips/shared/data/local/storage_service.dart';
import 'package:mytrips/shared/domain/providers/trip_storage_service_provider.dart';

final tripDataSourceProvider = Provider.family<TripDataSource, StorageService>(
    (_, storageService) => TripLocalDataSource(storageService));

final tripLocalRepositoryProvider = Provider<TripRepository>((ref) {
  final storageService = ref.watch(tripStorageServiceProvider);
  final dataSource = ref.watch(tripDataSourceProvider(storageService));
  final repository = TripRepositoryImpl(dataSource);
  return repository;
});
