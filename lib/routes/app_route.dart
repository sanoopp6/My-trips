import 'package:auto_route/auto_route.dart';
import 'package:mytrips/routes/app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page, Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [];

  @override
  List<AutoRouteGuard> get guards => [];
}
