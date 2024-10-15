import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mytrips/features/home/data/datasource/home_data_source.dart';
import 'package:mytrips/features/home/data/datasource/home_data_source_impl.dart';
import 'package:mytrips/features/home/data/repository/home_repository_impl.dart';
import 'package:mytrips/features/home/domain/repository/home_repository.dart';


final homeDataSourceProvider = Provider<HomeDataSource>(
      (_) => HomeDataSourceImpl(),
);

final homeRepositoryProvider =
    Provider<HomeRepository>((ref) {
  final HomeDataSource dataSource =
      ref.watch(homeDataSourceProvider);
  return HomeRepositoryImpl(dataSource);
});
