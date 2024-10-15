import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:latlong2/latlong.dart';
import 'package:mytrips/features/home/presentation/widgets/navigation_button.dart';
import 'package:mytrips/features/navigation/presentation/providers/navigation_state_providers.dart';
import 'package:mytrips/features/navigation/presentation/providers/state/navigation_state.dart';
import 'package:mytrips/shared/domain/models/trip/trip_model.dart';
import 'package:mytrips/shared/extensions/build_context_extensions.dart';
import 'package:mytrips/shared/theme/text_styles.dart';
import 'package:mytrips/shared/widgets/back_button.dart';

@RoutePage()
class NavigationScreen extends ConsumerStatefulWidget {
  static const String routeName = '/navigationScreen';
  final Trip trip;
  final Image navigationImage;

  const NavigationScreen({super.key, required this.trip, required this.navigationImage});

  @override
  ConsumerState<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends ConsumerState<NavigationScreen> {
  Map<String, dynamic>? routeData;

  @override
  void initState() {
    super.initState();

    Future(() {
      ref.read(navigationStateNotifierProvider.notifier).getRoute(
          startLocation: widget.trip.startLocation!,
          endLocation: widget.trip.endLocation!);
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(navigationStateNotifierProvider.select((value) => value),
        ((previous, next) {
      if (next is RouteFetched) {
        try {
          setState(() {
            routeData = next.routeData;
          });
        } catch (e) {
          print("Error fetching route: $e");
        }
      }
    }));

    if (routeData == null) {
      return const Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: CircularProgressIndicator()),
      );
    }

    final totalDistance = routeData!['routes'][0]['distance'];
    final totalDuration = routeData!['routes'][0]['duration'];

    final legs = routeData!['routes'][0]['legs'] as List;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 60),
          child: CustomBackButton(
            onPressed: () => context.router.back(),
          ),
        ),
        const SizedBox(height: 60),

        widget.navigationImage,

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Total Distance: ${(totalDistance / 1000).toStringAsFixed(2)} km',
            style: AppTextStyles.body,
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Total Time: ${(totalDuration / 60).toStringAsFixed(2)} minutes',
            style: AppTextStyles.body,
          ),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            itemCount: legs.length,
            itemBuilder: (context, index) {
              final leg = legs[index];
              final summary = leg['summary'];
              final distance = leg['distance'];
              final duration = leg['duration'];

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  child: ListTile(
                    title: Text(
                      'Route Segment: $summary',
                      style: AppTextStyles.h4,
                    ),
                    subtitle: Text(
                      'Distance: ${(distance / 1000).toStringAsFixed(2)} km\n'
                      'Time: ${(duration / 60).toStringAsFixed(2)} minutes',
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          color: Colors.blue,
          child: Center(
            child: NavigationButton(
              onPressed: () {},
              text: "Save",
            ),
          ),
        ),
      ]),
    );
  }
}
