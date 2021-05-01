import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'main.dart';
import 'SecondRoute.dart';
class CWUBuildingMarkers {
  //List of all CWU Building Markers
  // If you want to add a building add it to the function add Markers
  Set<Marker> cwuBuildingMarkers = {};

  //Will add markers to the CWUBuildingMarkers set.
  //Copy paste this context for each route
  void addMarkers(BuildContext context) {
    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('SURC'),
        position: LatLng(47.00251437, -120.53840126),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()));}));
    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Samuelson'),
        position: LatLng(47.00132552932142, -120.54041518469886),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Discovery'),
        position: LatLng(47.002181595909654, -120.54023815890388),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()));}));
    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Library'),
        position: LatLng(47.005174062776526, -120.54117156764106),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()));}));
  }
}


