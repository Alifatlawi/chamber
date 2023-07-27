import 'dart:async';
import 'package:biligoba_chamber/widgets/testpage.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController> _googleMapController = Completer();
  CameraPosition? _cameraPosition;

  // List of circles to be displayed on the map
  List<Circle> _circles = [];

  @override
  void initState() {
    _init();
    super.initState();
  }

  _init() {
    _cameraPosition = const CameraPosition(
      target: LatLng(39.9084634, 32.7535803),
      zoom: 15,
    );

    // Adding circles to the map
    _circles.add(
      Circle(
        circleId: CircleId('circle_1'),
        center: LatLng(39.9084634, 32.7535803),
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
          padding: const EdgeInsets.only(top: 70, left: 15, right: 20),
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
            padding: const EdgeInsets.all(8.0),
            child: _getMap(),
          ),
        ),
        const SizedBox(
          height: 400,
        )
      ],
    );
  }

  Widget _getMap() {
    return GoogleMap(
      initialCameraPosition: _cameraPosition!,
      mapType: MapType.normal,
      circles: Set.from(_circles),
      onMapCreated: (controller) {
        _googleMapController.complete(controller);
      },
    );
  }
}
