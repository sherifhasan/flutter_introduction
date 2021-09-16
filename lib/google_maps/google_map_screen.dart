import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  Completer<GoogleMapController> _controller = Completer();
  Set<Marker> markers = {};
  Set<Polygon> polygons = {};
  Set<Polyline> polyLines = {};
  Set<Circle> circles = {};
  Position? userLocation;

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Map'),
      ),
      body: GoogleMap(
        padding: EdgeInsets.all(10),
        mapType: MapType.satellite,
        trafficEnabled: false,
        myLocationEnabled: true,
        zoomControlsEnabled: true,
        minMaxZoomPreference: MinMaxZoomPreference(5, 20),
        liteModeEnabled: false,
        circles: circles,
        markers: markers,
        polygons: polygons,
        polylines: polyLines,
        initialCameraPosition: CameraPosition(
          target: LatLng(37.42796133580664, -122.085749655962),
          zoom: 0,
        ),
        onTap: (value) async {
          final GoogleMapController controller = await _controller.future;

          setState(() {
            controller.animateCamera(CameraUpdate.newCameraPosition(
                CameraPosition(
                    target: LatLng(value.latitude, value.longitude),
                    zoom: 11)));
            markers.clear();
            markers.add(Marker(
                markerId: MarkerId("pin marker"),
                alpha: 1.0,
                onTap: () {
                  debugPrint("marker is tapped");
                },
                infoWindow: InfoWindow(
                    snippet: "snippet text",
                    title: "Title",
                    onTap: () {
                      debugPrint("Info window is tapped");
                    }),
                position: value));
            polyLines.clear();
            polyLines.add(Polyline(
                polylineId: PolylineId("pinPolyLine 1"),
                onTap: () {
                  debugPrint("polyLine 1 is tapped");
                },
                zIndex: 1,
                consumeTapEvents: true,
                width: 2,
                color: Colors.red,
                geodesic: true,
                points: [
                  value,
                  userLocation == null
                      ? LatLng(value.latitude + 0.05, value.longitude - 0.05)
                      : LatLng(userLocation!.latitude, userLocation!.longitude),
                ]));
            polyLines.add(Polyline(
                polylineId: PolylineId("pinPolyLine 2"),
                onTap: () {
                  debugPrint("polyLine 2 is tapped");
                },
                zIndex: 2,
                consumeTapEvents: true,
                width: 2,
                color: Colors.red,
                points: [
                  userLocation == null
                      ? LatLng(value.latitude + 0.05, value.longitude - 0.05)
                      : LatLng(userLocation!.latitude, userLocation!.longitude),
                  value
                ]));
            circles.clear();
            circles.add(Circle(
                circleId: CircleId("pinCircle1"),
                center: value,
                consumeTapEvents: true,
                fillColor: Colors.blue[300]!,
                onTap: () {
                  debugPrint("circle 1 is tapped");
                },
                radius: 10,
                strokeColor: Colors.orange,
                strokeWidth: 2,
                visible: true,
                zIndex: 1));
            circles.add(Circle(
                circleId: CircleId("pinCircle2"),
                center: value,
                consumeTapEvents: true,
                fillColor: Colors.red[400]!,
                onTap: () {
                  debugPrint("circle 2 is tapped");
                },
                radius: 6,
                strokeColor: Colors.yellowAccent,
                strokeWidth: 2,
                visible: true,
                zIndex: 2));
            polygons.clear();
            polygons.add(Polygon(
                polygonId: PolygonId("polygon1"),
                points: [
                  LatLng(30.0348325, 31.2134613),
                  LatLng(30.0345732, 31.2141272),
                  LatLng(30.0348325, 31.2134613)
                ],
                zIndex: 1,
                consumeTapEvents: true,
                onTap: () {
                  debugPrint("polygon 2 is tapped");
                },
                strokeWidth: 2,
                fillColor: Colors.green[300]!,
                strokeColor: Colors.yellow[600]!,
                holes: [
                  [
                    LatLng(30.034677, 31.213249),
                    LatLng(30.034536, 31.213265),
                    LatLng(30.034464, 31.212938),
                    LatLng(30.034677, 31.213249)
                  ],
                  [
                    LatLng(30.034536, 31.213265),
                    LatLng(30.0345732, 31.2141272),
                    LatLng(30.034464, 31.212938),
                    LatLng(30.034536, 31.213265)
                  ]
                ]));
          });
        },
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }

  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.
  Future<void> getCurrentLocation() async {
    LocationPermission permission;
    bool serviceEnabled;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      Geolocator.openLocationSettings();
      setState(() {});
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        setState(() {});
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      setState(() {});
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    userLocation = await Geolocator.getCurrentPosition();
  }
}
