

import 'package:mytrips/features/navigation/domain/repository/navigation_repository.dart';
import 'package:mytrips/features/navigation/data/datasource/navigation_data_source.dart';
import 'package:mytrips/shared/domain/models/TripLocation/trip_location_model.dart';

class NavigationRepositoryImpl extends NavigationRepository {
  final NavigationDataSource dataSource;

  NavigationRepositoryImpl(this.dataSource);

  @override
  Future<dynamic> getRoute({required TripLocation startLocation, required TripLocation endLocation}) {
    return dataSource.getRoute(startLocation: startLocation, endLocation: endLocation);
  }

}
