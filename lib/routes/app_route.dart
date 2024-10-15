import 'package:auto_route/auto_route.dart';
import 'package:mytrips/routes/app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: NavigationRoute.page),
    AutoRoute(page: TripHistoryRoute.page),
  ];

  @override
  List<AutoRouteGuard> get guards => [];
}
