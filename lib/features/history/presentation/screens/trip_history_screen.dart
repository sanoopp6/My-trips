import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mytrips/features/history/presentation/providers/state/trip_history_state.dart';
import 'package:mytrips/features/history/presentation/providers/trip_history_state_providers.dart';
import 'package:mytrips/features/home/presentation/widgets/navigation_button.dart';
import 'package:mytrips/services/trip_cache_service/domain/providers/trip_provider.dart';
import 'package:mytrips/shared/domain/models/trip/trip_model.dart';
import 'package:mytrips/shared/theme/text_styles.dart';
import 'package:mytrips/shared/widgets/back_button.dart';

@RoutePage()
class TripHistoryScreen extends ConsumerStatefulWidget {
  static const String routeName = '/tripHistoryScreen';

  const TripHistoryScreen({super.key});

  @override
  ConsumerState<TripHistoryScreen> createState() => _TripHistoryScreenState();
}

class _TripHistoryScreenState extends ConsumerState<TripHistoryScreen> {

  TripsList tripsList = [];

  @override
  void initState() {
    super.initState();
    
    Future((){
      ref.read(tripHistoryStateNotifierProvider.notifier).getSavedTrips();
    });

  }

  @override
  Widget build(BuildContext context) {

    ref.listen(tripHistoryStateNotifierProvider.select((value) => value),
        ((previous, next) {
          if (next is TripsFetched) {
            try {
              setState(() {
                tripsList = next.trips;
              });
            } catch (e) {
              print("Error fetching route: $e");
            }
          }
        }));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Trip History'),
        leading: CustomBackButton(onPressed: ()=> context.router.back()),
      ),
      body: ListView.builder(
      itemCount: tripsList.length,
      itemBuilder: (context, index) {
        final trip = tripsList[index];
        return ListTile(
          title: Text("Start Location: ${trip.startLocation!.locName}"),
          subtitle: Text("End Location: ${trip.endLocation!.locName}"),
          onTap: () {
          },
        );
      },
    ),
    );
  }
}
