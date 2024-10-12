import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mytrips/main/app_env.dart';
import 'package:mytrips/routes/app_route.dart';

class MyTripsApp extends ConsumerWidget {

  MyTripsApp({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return MaterialApp.router(
      title: EnvInfo.appTitle,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
      debugShowCheckedModeBanner: false,
    );
  }

}