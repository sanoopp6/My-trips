import 'dart:convert';

import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:mytrips/features/home/data/datasource/home_data_source.dart';
import 'package:mytrips/main/app_env.dart';
import 'package:mytrips/shared/domain/models/TripLocation/trip_location_model.dart';
import 'package:http/http.dart' as http;

class HomeDataSourceImpl implements HomeDataSource {
  HomeDataSourceImpl();

  @override
  Future<List<TripLocation>> getRoute(
      {required TripLocation startLocation,
      required TripLocation endLocation}) async {
    final url =
        'https://api.mapbox.com/directions/v5/mapbox/driving/${startLocation.longitude},${startLocation.latitude};${endLocation.longitude},${endLocation.latitude}?access_token=${EnvInfo.mapKey}';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print(data);

      final encodedPolyline = data['routes'][0]['geometry'];

      PolylinePoints polylinePoints = PolylinePoints();
      final decodedPolyline = polylinePoints.decodePolyline(
        encodedPolyline,
      );

      return decodedPolyline
          .map((coord) => TripLocation(latitude: coord.latitude, longitude: coord.longitude))
          .toList();
    } else {
      throw Exception('Failed to load route');
    }
  }
}
