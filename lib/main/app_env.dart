import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:mytrips/shared/domain/models/trip/trip_model.dart';

enum AppEnvironment { DEV, PROD }

abstract class EnvInfo {
  static AppEnvironment _environment = AppEnvironment.DEV;

  static String get mapKey => _environment._mapKey;
  static String get appTitle => _environment._appTitle;

  static void initialize(AppEnvironment environment) async {
    EnvInfo._environment = environment;
    String envFile = (environment == AppEnvironment.PROD)
        ? ".env.production"
        : ".env.development";
    await dotenv.load(fileName: envFile);
    MapboxOptions.setAccessToken("pk.eyJ1IjoiYWtoaWxsZXZha3VtYXIiLCJhIjoiY2x4MDcwYzZ4MGl2aTJqcmFxbXZzc3lndiJ9.9sxfvrADlA25b1CHX2VuDA");
    await Hive.initFlutter();
    Hive.registerAdapter(TripAdapter());
  }

}

extension _EnvProperties on AppEnvironment {
  String get _mapKey => dotenv.env['MAP_KEY'] ?? '';
  String get _appTitle => dotenv.env['APP_TITLE'] ?? '';
}