import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:geolocator/geolocator.dart' as geoLocator;

// import 'package:latlong2/latlong.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:mytrips/features/home/presentation/providers/home_state_providers.dart';
import 'package:mytrips/features/home/presentation/providers/state/home_state.dart';
import 'package:mytrips/features/home/presentation/widgets/navigation_button.dart';
import 'package:mytrips/main/app_env.dart';
import 'package:mytrips/routes/app_route.gr.dart';
import 'package:mytrips/shared/domain/models/TripLocation/trip_location_model.dart';
import 'package:mytrips/shared/domain/models/trip/trip_model.dart';
import 'package:mytrips/shared/extensions/build_context_extensions.dart';
import 'package:mytrips/shared/theme/text_styles.dart';

@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  static const String routeName = '/homeScreen';

  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  TextEditingController startLocationController = TextEditingController();
  TextEditingController endLocationController = TextEditingController();
  TripLocation? startLocation;
  TripLocation? endLocation;
  PointAnnotation? startLocationAnnotation;
  PointAnnotation? endLocationAnnotation;
  List<TripLocation> routePoints = [];
  var placesService = GeoCoding(
      country: "IN",
      limit: 5,
      types: [PlaceType.place, PlaceType.address, PlaceType.locality]);

  MapboxMap? mapboxMap;
  PointAnnotationManager? pointAnnotationManager;
  PolylineAnnotation? polylineAnnotation;
  PolylineAnnotationManager? polylineAnnotationManager;
  final defaultEdgeInsets =
      MbxEdgeInsets(top: 100, left: 100, bottom: 100, right: 100);
  GlobalKey _snapshotKey = GlobalKey();
  Image? snapshotImage;
  Snapshotter? _snapshotter;
  bool snapshotting = false;

  @override
  void dispose() {
    _snapshotter?.dispose();
    super.dispose();
  }

  _onMapCreated(MapboxMap mapboxMap) async {
    this.mapboxMap = mapboxMap;
    this.pointAnnotationManager =
        await mapboxMap.annotations.createPointAnnotationManager();
    polylineAnnotationManager =
        await mapboxMap.annotations.createPolylineAnnotationManager();
    _snapshotter = await Snapshotter.create(
      options: MapSnapshotOptions(
          size: Size(width: 400, height: 400),
          pixelRatio: MediaQuery.of(context).devicePixelRatio),
    );
    await _snapshotter?.style.setStyleURI(MapboxStyles.OUTDOORS);
    setLocationComponent();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    geoLocator.LocationPermission permission;

    serviceEnabled = await geoLocator.Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return;
    }

    permission = await geoLocator.Geolocator.checkPermission();
    if (permission == geoLocator.LocationPermission.denied) {
      permission = await geoLocator.Geolocator.requestPermission();
      if (permission == geoLocator.LocationPermission.denied) {
        return;
      }
    }

    if (permission == geoLocator.LocationPermission.deniedForever) {
      return;
    }

    geoLocator.Position position =
        await geoLocator.Geolocator.getCurrentPosition();

    mapboxMap?.easeTo(
        CameraOptions(
            center: Point(
                coordinates: Position(
              position.longitude,
              position.latitude,
            )),
            zoom: 6),
        MapAnimationOptions(duration: 2000, startDelay: 0));
  }

  setLocationComponent() async {
    await mapboxMap?.location.updateSettings(
      LocationComponentSettings(
        enabled: true,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeStateNotifierProvider);

    ref.listen(homeStateNotifierProvider.select((value) => value),
        ((previous, next) {
      if (next is RouteFetched) {
        try {
          setState(() {
            routePoints = next.routes;
          });
          _drawRoute(routePoints);
        } catch (e) {
          print("Error fetching route: $e");
        }
      }
    }));

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          width: context.sizeWidth,
          height: 400,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "YOUR LOCATION",
                  style: AppTextStyles.body.copyWith(
                      color: Colors.white, fontStyle: FontStyle.italic),
                ),
                TypeAheadField<TripLocation>(
                  controller: startLocationController,
                  builder: (context, controller, focusNode) => TextField(
                    controller: controller,
                    focusNode: focusNode,
                    style:
                        AppTextStyles.largeMedium.copyWith(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Location",
                      hintStyle: AppTextStyles.largeMedium
                          .copyWith(color: Colors.white.withOpacity(0.6)),
                    ),
                  ),
                  itemBuilder: (context, tripLocation) => ListTile(
                    title: Text(tripLocation.locName),
                  ),
                  onSelected: (TripLocation tripLocation) async {
                    setState(() {
                      startLocation = tripLocation;
                    });

                    FocusManager.instance.primaryFocus?.unfocus();

                    mapboxMap?.easeTo(
                        CameraOptions(
                            center: Point(
                                coordinates: Position(
                              startLocation!.longitude,
                              startLocation!.latitude,
                            )),
                            zoom: 8),
                        MapAnimationOptions(duration: 2000, startDelay: 0));

                    startLocationController.text = startLocation!.locName;

                    if (startLocationAnnotation != null) {
                      pointAnnotationManager?.delete(startLocationAnnotation!);
                    }

                    startLocationAnnotation = await pointAnnotationManager
                        ?.create(PointAnnotationOptions(
                            geometry: Point(
                                coordinates: Position(
                      startLocation!.longitude,
                      startLocation!.latitude,
                    ))));

                    if (endLocation != null) {
                      ref.read(homeStateNotifierProvider.notifier).getRoute(
                          startLocation: startLocation!,
                          endLocation: endLocation!);
                    }
                  },
                  suggestionsCallback: (String search) async {
                    var places = await placesService.getPlaces(
                      search,
                    );

                    if (places.failure != null) {
                      return null;
                    }

                    final mapBoxPlaces = places.success;
                    if (mapBoxPlaces != null) {
                      return mapBoxPlaces.map((place) {
                        return convertToTrip(place);
                      }).toList();
                    }

                    return null;
                  },
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    Text(
                      "${startLocation?.latitude ?? ""}, ${startLocation?.longitude ?? ""}",
                      style: AppTextStyles.body.copyWith(color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Divider(
                  height: 1.5,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 12,
                ),
                TypeAheadField<TripLocation>(
                  controller: endLocationController,
                  builder: (context, controller, focusNode) => TextField(
                    controller: controller,
                    focusNode: focusNode,
                    style:
                        AppTextStyles.largeMedium.copyWith(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Destination",
                      hintStyle: AppTextStyles.largeMedium
                          .copyWith(color: Colors.white.withOpacity(0.6)),
                    ),
                  ),
                  itemBuilder: (context, tripLocation) => ListTile(
                    title: Text(tripLocation.locName),
                  ),
                  onSelected: (TripLocation tripLocation) async {
                    setState(() {
                      endLocation = tripLocation;
                    });

                    FocusManager.instance.primaryFocus?.unfocus();

                    endLocationController.text = endLocation!.locName;

                    if (endLocationAnnotation != null) {
                      pointAnnotationManager?.delete(endLocationAnnotation!);
                    }

                    endLocationAnnotation = await pointAnnotationManager
                        ?.create(PointAnnotationOptions(
                            geometry: Point(
                                coordinates: Position(
                      endLocation!.longitude,
                      endLocation!.latitude,
                    ))));

                    if (startLocation != null) {
                      ref.read(homeStateNotifierProvider.notifier).getRoute(
                          startLocation: startLocation!,
                          endLocation: endLocation!);
                    }
                  },
                  suggestionsCallback: (String search) async {
                    var places = await placesService.getPlaces(
                      search,
                    );

                    if (places.failure != null) {
                      return null;
                    }

                    final mapBoxPlaces = places.success;
                    if (mapBoxPlaces != null) {
                      return mapBoxPlaces.map((place) {
                        return convertToTrip(place);
                      }).toList();
                    }

                    return null;
                  },
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    Text(
                      "${endLocation?.latitude ?? ""}, ${endLocation?.longitude ?? ""}",
                      style: AppTextStyles.body.copyWith(color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.navigation_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: MapWidget(
          key: ValueKey(EnvInfo.mapKey),
          onMapCreated: _onMapCreated,
          cameraOptions: CameraOptions(
              center: Point(
                  coordinates: Position(
                6.0033416748046875,
                43.70908256335716,
              )),
              zoom: 3.0),
        )),
        Container(
            padding: const EdgeInsets.all(12),
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavigationButton(
                    onPressed: () async {
                      if (startLocation == null) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                          "Please enter start location",
                          style: AppTextStyles.body,
                        )));
                        return;
                      }

                      if (endLocation == null) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                          "Please enter destination",
                          style: AppTextStyles.body,
                        )));
                        return;
                      }

                      if (snapshotting) {
                        return;
                      }
                      snapshotting = true;

                      _snapshotter?.setSize(Size(width: 400, height: 300));

                      final cameraState = await mapboxMap!.getCameraState();
                      _snapshotter?.setCamera(cameraState.toCameraOptions());

                      final snapshot = await _snapshotter?.start();

                      if (snapshot != null) {
                        setState(() {
                          snapshotImage = Image.memory(snapshot);
                        });
                      }

                      snapshotting = false;

                      if (snapshotImage != null) {
                        AutoRouter.of(context).push(NavigationRoute(
                            trip: Trip(
                                startLocation: startLocation,
                                endLocation: endLocation),
                            navigationImage: snapshotImage!));
                      }
                    },
                    text: 'Navigate'),
                const SizedBox(
                  width: 20,
                ),
                NavigationButton(onPressed: () {
                  AutoRouter.of(context).push(const TripHistoryRoute());
                }, text: "Saved Trips"),
              ],
            ))
      ]),
    );
  }

  TripLocation convertToTrip(MapBoxPlace place) {
    var locationCoordinates = place.geometry?.coordinates;
    return TripLocation(
        locName: place.placeName ?? "",
        latitude: locationCoordinates!.lat,
        longitude: locationCoordinates.long);
  }

  void _drawRoute(List<TripLocation> routes) {
    if (mapboxMap != null) {
      List<Position> positions = routes
          .map((route) => Position(route.longitude, route.latitude))
          .toList();
      polylineAnnotationManager?.deleteAll();
      polylineAnnotationManager?.createMulti(positions
          .map((e) => PolylineAnnotationOptions(
              geometry: LineString(coordinates: positions),
              lineColor: Colors.red.value,
              lineWidth: 5))
          .toList());
    }
  }
}
