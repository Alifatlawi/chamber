import 'dart:async';
import 'package:biligoba_chamber/widgets/testpage.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController> _googleMapController = Completer();
  CameraPosition _cameraPosition = const CameraPosition(
    target: LatLng(39.9084634, 32.7535803),
    zoom: 15,
  );

  final List<Circle> _circles = [];

  @override
  void initState() {
    _init();
    super.initState();
  }

  _init() {
    // Adding circles to the map
    _circles.add(
      Circle(
        circleId: const CircleId('circle_1'),
        center: const LatLng(39.9084634, 32.7535803),
        radius: 500, // specify the radius of the circle in meters
        fillColor: Colors.blue.withOpacity(0.3),
        strokeWidth: 2,
        strokeColor: Colors.blue,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TestPage(
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 60, left: 15, right: 20),
          child: const Text(
            'Map',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 55,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Stack(
                  children: [
                    _getMap(),
                    Positioned(
                      top: 10.0,
                      right: 10.0,
                      child: Column(
                        children: [
                          FloatingActionButton(
                            onPressed: () => _zoomIn(),
                            child: const Icon(Icons.zoom_in),
                          ),
                          const SizedBox(height: 10),
                          FloatingActionButton(
                            onPressed: () => _zoomOut(),
                            child: const Icon(Icons.zoom_out),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // const SizedBox(
        //   height: 400,
        // )
      ],
    );
  }

  Widget _getMap() {
    return GoogleMap(
      initialCameraPosition: _cameraPosition,
      mapType: MapType.normal,
      circles: Set.from(_circles),
      myLocationButtonEnabled: false,
      onMapCreated: (controller) {
        _googleMapController.complete(controller);
      },
    );
  }

  Future<void> _zoomIn() async {
    final GoogleMapController controller = await _googleMapController.future;
    final currentZoomLevel = _cameraPosition.zoom;
    if (currentZoomLevel < 20.0) {
      // maximum zoom level is 21
      _cameraPosition = CameraPosition(
        target: _cameraPosition.target,
        zoom: currentZoomLevel + 1,
      );
      controller.animateCamera(CameraUpdate.newCameraPosition(_cameraPosition));
    }
  }

  Future<void> _zoomOut() async {
    final GoogleMapController controller = await _googleMapController.future;
    final currentZoomLevel = _cameraPosition.zoom;
    if (currentZoomLevel > 1.0) {
      // minimum zoom level is 0
      _cameraPosition = CameraPosition(
        target: _cameraPosition.target,
        zoom: currentZoomLevel - 1,
      );
      controller.animateCamera(CameraUpdate.newCameraPosition(_cameraPosition));
    }
  }
}
