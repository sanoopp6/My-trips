import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mytrips/features/home/data/datasource/home_data_source.dart';
import 'package:mytrips/features/home/data/datasource/home_data_source_impl.dart';
import 'package:mytrips/features/home/data/repository/home_repository_impl.dart';
import 'package:mytrips/features/home/domain/repository/home_repository.dart';
import 'package:mytrips/features/navigation/data/datasource/navigation_data_source.dart';
import 'package:mytrips/features/navigation/data/datasource/navigation_data_source_impl.dart';
import 'package:mytrips/features/navigation/data/repository/navigation_repository_impl.dart';
import 'package:mytrips/features/navigation/domain/repository/navigation_repository.dart';


final navigationDataSourceProvider = Provider<NavigationDataSource>(
      (_) => NavigationDataSourceImpl(),
);

final navigationRepositoryProvider =
    Provider<NavigationRepository>((ref) {
  final NavigationDataSource dataSource =
      ref.watch(navigationDataSourceProvider);
  return NavigationRepositoryImpl(dataSource);
});
