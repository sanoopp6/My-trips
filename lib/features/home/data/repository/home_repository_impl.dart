

import 'package:mytrips/features/home/data/datasource/home_data_source.dart';
import 'package:mytrips/features/home/domain/repository/home_repository.dart';
import 'package:mytrips/shared/domain/models/TripLocation/trip_location_model.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeDataSource dataSource;

  HomeRepositoryImpl(this.dataSource);

  @override
  Future<List<TripLocation>> getRoute({required TripLocation startLocation, required TripLocation endLocation}) {
    return dataSource.getRoute(startLocation: startLocation, endLocation: endLocation);
  }

}
