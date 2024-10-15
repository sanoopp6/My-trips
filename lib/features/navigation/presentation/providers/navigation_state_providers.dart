import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mytrips/features/home/domain/providers/home_provider.dart';
import 'package:mytrips/features/home/domain/repository/home_repository.dart';
import 'package:mytrips/features/home/presentation/providers/state/home_state.dart';
import 'package:mytrips/features/home/presentation/providers/state/home_state_notifier.dart';
import 'package:mytrips/features/navigation/domain/providers/navigation_provider.dart';
import 'package:mytrips/features/navigation/domain/repository/navigation_repository.dart';
import 'package:mytrips/features/navigation/presentation/providers/state/navigation_state.dart';
import 'package:mytrips/features/navigation/presentation/providers/state/navigation_state_notifier.dart';

final navigationStateNotifierProvider =
    StateNotifierProvider<NavigationStateNotifier, NavigationState>((ref) {
  final NavigationRepository navigationRepository =
      ref.watch(navigationRepositoryProvider);
  return NavigationStateNotifier(navigationRepository: navigationRepository);
});
