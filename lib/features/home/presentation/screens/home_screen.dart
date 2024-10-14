import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:latlong2/latlong.dart';
import 'package:mytrips/features/home/presentation/widgets/navigation_button.dart';
import 'package:mytrips/routes/app_route.gr.dart';
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
  TextEditingController _startLocationController = TextEditingController();
  TextEditingController _endLocationController = TextEditingController();

  final controller = MapController.withPosition(
      initPosition: GeoPoint(
    latitude: 47.4358055,
    longitude: 8.4737324,
  ));
  var isLight = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                TypeAheadField<Trip>(
                  controller: _startLocationController,
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
                  itemBuilder: (context, trip) => ListTile(
                    title: Text(trip.startLocName),
                  ),
                  onSelected: (Trip value) {},
                  suggestionsCallback: (String search) {},
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
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
                TypeAheadField<Trip>(
                  controller: _endLocationController,
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
                  itemBuilder: (context, trip) => ListTile(
                    title: Text(trip.startLocName),
                  ),
                  onSelected: (Trip value) {},
                  suggestionsCallback: (String search) {},
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
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
          child: OSMFlutter(
              controller: controller,
              osmOption: const OSMOption(
                userTrackingOption: UserTrackingOption(
                  enableTracking: true,
                  unFollowUser: false,
                ),
              )),
        ),
        Container(
            padding: const EdgeInsets.all(12),
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavigationButton(
                    onPressed: () {
                      String startLocation =
                          _startLocationController.text.trim();

                      if (startLocation.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                          "Please enter start location",
                          style: AppTextStyles.body,
                        )));
                        return;
                      }

                      String endLocation = _endLocationController.text.trim();

                      if (endLocation.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                          "Please enter destination",
                          style: AppTextStyles.body,
                        )));
                        return;
                      }
                      AutoRouter.of(context).push(NavigationRoute(
                          trip: Trip(
                              startLocName: startLocation,
                              endLocName: endLocation)));
                    },
                    text: 'Navigate'),
                const SizedBox(
                  width: 20,
                ),
                NavigationButton(onPressed: () {}, text: "Saved Trips"),
              ],
            ))
      ]),
    );
  }
}
