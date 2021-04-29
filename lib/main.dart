
import 'package:cwu_gps/CWUBuildingMarkers.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GoogleMapController mapController;
  Set<Marker> _markers = {};

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    var cwuBuildings = new CWUBuildingMarkers();
    cwuBuildings.addMarkers();
    _markers = cwuBuildings.cwuBuildingMarkers;
  }

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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Buildings'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Surc'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Samuelson'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Library'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Sue Lombard'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Parking lot'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Black Hall'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Barto Hall'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Kamola Hall'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Green Hall'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Dugmore Hall'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Wilson Hall'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Quigley Hall'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Sparks Hall'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Meisner Hall'),
                onTap: () {},
              ),
            ],
          ),
        ),
        //Blue App bar at the top
        appBar: AppBar(
          leading: Builder(
            builder: (context) => // Ensure Scaffold is in context
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer()
            ),
          ),
        ),
      ),
    );
  }
}
