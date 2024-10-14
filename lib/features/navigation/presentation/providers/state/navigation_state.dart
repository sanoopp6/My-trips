import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_state.freezed.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState.initial() = Initial;

  const factory NavigationState.loading() = Loading;

  const factory NavigationState.failure() = Failure;

  const factory NavigationState.success() = Success;

  const factory NavigationState.saved() = Saved;
}
