import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mytrips/features/home/domain/providers/home_provider.dart';
import 'package:mytrips/features/home/domain/repository/home_repository.dart';
import 'package:mytrips/features/home/presentation/providers/state/home_state.dart';
import 'package:mytrips/features/home/presentation/providers/state/home_state_notifier.dart';

final homeStateNotifierProvider =
    StateNotifierProvider<HomeStateNotifier, HomeState>((ref) {
  final HomeRepository homeRepository = ref.watch(homeRepositoryProvider);
  return HomeStateNotifier(homeRepository: homeRepository);
});
