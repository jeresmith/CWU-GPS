
import 'package:cwu_gps/CWUBuildingMarkers.dart';
import 'package:flutter/material.dart';
import 'CreateDrawer.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isSearching = false;

  GoogleMapController mapController;
  Set<Marker> _markers = {};

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    var cwuBuildings = new CWUBuildingMarkers();
    cwuBuildings.addMarkers();
    _markers = cwuBuildings.cwuBuildingMarkers;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          markers: _markers,
          initialCameraPosition: CameraPosition(
            target: LatLng(47.00251437, -120.53840126),
            zoom: 17,
          ),
          mapType: MapType.hybrid,
        ),
        //Hamburger menu
        drawer: CreateDrawer(mapController),
        //Blue App bar at the top
        appBar: AppBar(
          leading: Builder(
            builder: (context) => // Ensure Scaffold is in context
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer()
            ),
          ),
          title: !isSearching ?
          Text('CWU GPS') : TextField(
              decoration: InputDecoration(
                  hintText: 'Searching',
                  hintStyle: TextStyle(color: Colors.white)
              )

          ),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.search),
                onPressed: (){
                  setState(() {
                    this.isSearching = !this.isSearching;
                  });

                }
            )
          ],
        ),
      ),
    );
  }
}
