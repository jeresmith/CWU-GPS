import 'dart:collection';

import 'package:flutter/material.dart';
import 'CreateDrawer.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'CWUBuildingMarkers.dart';
import 'SearchBar.dart';

void main() => runApp(MyApp());

//This is a stateless widget to get MaterialApp which has a built in navigator object
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyAppStateful()
    );
  }
}

//Wrapped original My app to get state
class MyAppStateful extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyAppStateful> {

  bool isSearching = false;


  GoogleMapController mapController;
  Set<Marker> _markers = {};

  final LatLng _center = const LatLng(45.521563, -122.677433);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GoogleMap(
          onMapCreated: (GoogleMapController controller) {    //Made this a lambda function not sure if necessary but guide I was following did it this way
            mapController = controller;
            var cwuBuildings = new CWUBuildingMarkers();
            cwuBuildings.addMarkers(context);
            _markers = cwuBuildings.cwuBuildingMarkers;
          } ,
          markers: _markers,
          initialCameraPosition: CameraPosition(
            target: LatLng(47.00251437, -120.53840126),
            zoom: 17,
          ),
          mapType: MapType.satellite,
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

                  showSearch(context: context, delegate: CustomSearchClass(mapController));

                }
            )
          ],
        ),
      ),
    );
  }
}

