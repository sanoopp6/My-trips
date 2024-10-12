import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:mytrips/main/app_env.dart';
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

  MapboxMap? mapboxMap;
  var isLight = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () async {});
  }

  @override
  Widget build(BuildContext context) {
    _onMapCreated(MapboxMap mapboxMap) {
      this.mapboxMap = mapboxMap;
      mapboxMap.style;
    }

    _onStyleLoadedCallback(StyleLoadedEventData data) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Style loaded :), time: ${data.timeInterval}"),
        backgroundColor: Theme.of(context).primaryColor,
        duration: Duration(seconds: 1),
      ));
    }

    _onCameraChangeListener(CameraChangedEventData data) {
      // print("CameraChangedEventData: ${data.debugInfo}");
    }

    _onResourceRequestListener(ResourceEventData data) {
      print("ResourceEventData: time: ${data.timeInterval}");
    }

    _onMapIdleListener(MapIdleEventData data) {
      print("MapIdleEventData: timestamp: ${data.timestamp}");
    }

    _onMapLoadedListener(MapLoadedEventData data) {
      print("MapLoadedEventData: time: ${data.timeInterval}");
    }

    _onMapLoadingErrorListener(MapLoadingErrorEventData data) {
      print("MapLoadingErrorEventData: timestamp: ${data.timestamp}");
    }

    _onRenderFrameStartedListener(RenderFrameStartedEventData data) {
      print("RenderFrameStartedEventData: timestamp: ${data.timestamp}");
    }

    _onRenderFrameFinishedListener(RenderFrameFinishedEventData data) {
      print("RenderFrameFinishedEventData: time: ${data.timeInterval}");
    }

    _onSourceAddedListener(SourceAddedEventData data) {
      print("SourceAddedEventData: timestamp: ${data.timestamp}");
    }

    _onSourceDataLoadedListener(SourceDataLoadedEventData data) {
      print("SourceDataLoadedEventData: time: ${data.timeInterval}");
    }

    _onSourceRemovedListener(SourceRemovedEventData data) {
      print("SourceRemovedEventData: timestamp: ${data.timestamp}");
    }

    _onStyleDataLoadedListener(StyleDataLoadedEventData data) {
      print("StyleDataLoadedEventData: time: ${data.timeInterval}");
    }

    _onStyleImageMissingListener(StyleImageMissingEventData data) {
      print("StyleImageMissingEventData: timestamp: ${data.timestamp}");
    }

    _onStyleImageUnusedListener(StyleImageUnusedEventData data) {
      print("StyleImageUnusedEventData: timestamp: ${data.timestamp}");
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(

        children: [
          Container(
            height: 500,
            child: MapWidget(
              key: ValueKey("mapWidget"),
              cameraOptions: CameraOptions(
                  center: Point(
                      coordinates: Position(
                    6.0033416748046875,
                    43.70908256335716,
                  )),
                  zoom: 3.0),
              textureView: true,
              onMapCreated: _onMapCreated,
              onStyleLoadedListener: _onStyleLoadedCallback,
              onCameraChangeListener: _onCameraChangeListener,
              onMapIdleListener: _onMapIdleListener,
              onMapLoadedListener: _onMapLoadedListener,
              onMapLoadErrorListener: _onMapLoadingErrorListener,
              onRenderFrameStartedListener: _onRenderFrameStartedListener,
              onRenderFrameFinishedListener: _onRenderFrameFinishedListener,
              onSourceAddedListener: _onSourceAddedListener,
              onSourceDataLoadedListener: _onSourceDataLoadedListener,
              onSourceRemovedListener: _onSourceRemovedListener,
              onStyleDataLoadedListener: _onStyleDataLoadedListener,
              onStyleImageMissingListener: _onStyleImageMissingListener,
              onStyleImageUnusedListener: _onStyleImageUnusedListener,
              onResourceRequestListener: _onResourceRequestListener,
              onLongTapListener: (coordinate) {},
            ),
          ),
        ],
      ),
    );
  }
}
