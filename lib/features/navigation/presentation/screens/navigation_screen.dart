import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:latlong2/latlong.dart';
import 'package:mytrips/features/home/presentation/widgets/navigation_button.dart';
import 'package:mytrips/shared/domain/models/trip/trip_model.dart';
import 'package:mytrips/shared/extensions/build_context_extensions.dart';
import 'package:mytrips/shared/theme/text_styles.dart';

@RoutePage()
class NavigationScreen extends ConsumerStatefulWidget {
  static const String routeName = '/navigationScreen';
  final Trip trip;

  const NavigationScreen({super.key, required this.trip});

  @override
  ConsumerState<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends ConsumerState<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
        child: Column(children: [
          BackButton(
            onPressed: () => context.router.back,
          ),
          Expanded(child: Container()),
          Container(
            padding: const EdgeInsets.all(12),
            color: Colors.blue,
            child:
                Center(child: NavigationButton(onPressed: () {


                }, text: "Save")),
          )
        ]),
      ),
    );
  }
}
