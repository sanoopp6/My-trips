// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:mytrips/features/history/presentation/screens/trip_history_screen.dart'
    as _i4;
import 'package:mytrips/features/home/presentation/screens/home_screen.dart'
    as _i1;
import 'package:mytrips/features/navigation/presentation/screens/navigation_screen.dart'
    as _i2;
import 'package:mytrips/features/splash/presentation/screens/splash.dart'
    as _i3;
import 'package:mytrips/shared/domain/models/trip/trip_model.dart' as _i7;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.NavigationScreen]
class NavigationRoute extends _i5.PageRouteInfo<NavigationRouteArgs> {
  NavigationRoute({
    _i6.Key? key,
    required _i7.Trip trip,
    required _i6.Image navigationImage,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          NavigationRoute.name,
          args: NavigationRouteArgs(
            key: key,
            trip: trip,
            navigationImage: navigationImage,
          ),
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NavigationRouteArgs>();
      return _i2.NavigationScreen(
        key: args.key,
        trip: args.trip,
        navigationImage: args.navigationImage,
      );
    },
  );
}

class NavigationRouteArgs {
  const NavigationRouteArgs({
    this.key,
    required this.trip,
    required this.navigationImage,
  });

  final _i6.Key? key;

  final _i7.Trip trip;

  final _i6.Image navigationImage;

  @override
  String toString() {
    return 'NavigationRouteArgs{key: $key, trip: $trip, navigationImage: $navigationImage}';
  }
}

/// generated route for
/// [_i3.SplashScreen]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.SplashScreen();
    },
  );
}

/// generated route for
/// [_i4.TripHistoryScreen]
class TripHistoryRoute extends _i5.PageRouteInfo<void> {
  const TripHistoryRoute({List<_i5.PageRouteInfo>? children})
      : super(
          TripHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'TripHistoryRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.TripHistoryScreen();
    },
  );
}
