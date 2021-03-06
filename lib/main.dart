
import 'dart:collection';

import 'dart:typed_data';


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
  //BitmapDescriptor need to be loaded before the map loads.
  BitmapDescriptor icon1;
  BitmapDescriptor icon2;
  BitmapDescriptor icon3;
  bool isSearching = false;
   @override
   void initState() {
  //   //Uses getBytesFromAsset method in CWUBuildingMarkers to resize the png.
      getBytesFromAssetHelper();
     }
  //Used to load data during init state uses getBytesFromAsset method in CWUBuildingMarkers to resize png images
  void getBytesFromAssetHelper() async  {
    CWUBuildingMarkers resize = new CWUBuildingMarkers();
    final Uint8List firstIcon = await (resize.getBytesFromAsset('images/motarboard.png', 150));
    icon1 = BitmapDescriptor.fromBytes(firstIcon);
    final Uint8List secondIcon = await (resize.getBytesFromAsset('images/house.png', 150));
    icon2 = BitmapDescriptor.fromBytes(secondIcon);
    final Uint8List thirdIcon = await  (resize.getBytesFromAsset('images/food.png', 150));
    icon3 = BitmapDescriptor.fromBytes(thirdIcon);
    //This code fixes the double run bug for markers to show.
    //Markers were loading to slowing so needed to be made sooner in the program for markers:
    resize.addMarkers(context, icon1, icon2, icon3);
    setState((){
      _markers = resize.cwuBuildingMarkers;
      print("items ready and set state");
    });
  }

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

