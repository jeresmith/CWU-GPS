import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'CWUBuildingMarkers.dart';


void main() => runApp(MyApp());

//This is a stateless widget to get MaterialApp which has a built in navigator object
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyAppTwo()
    );
  }
}
//Wrapped original My app to get state
class MyAppTwo extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyAppTwo> {
  GoogleMapController mapController;
  Set<Marker> _markers = {};
  bool isSearching = false;
  final LatLng _center = const LatLng(45.521563, -122.677433);


  // void _onMapCreated(GoogleMapController controller) {
  //   mapController = controller;
  // }

// class _MyAppState extends State<MyApp> {
//   GoogleMapController mapController;
//   Set<Marker> _markers = {};
//
//   final LatLng _center = const LatLng(45.521563, -122.677433);
//
//   // void _onMapCreated(BuildContext context, GoogleMapController controller) {
//   //   mapController = controller;
//   //   var cwuBuildings = new CWUBuildingMarkers();
//   //   cwuBuildings.addMarkers();
//   //   _markers = cwuBuildings.cwuBuildingMarkers;
//   }

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
          drawer: Drawer (
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
                  showSearch(context: context, delegate: CustomSearchClass());
                  // setState(() {
                  //   this.isSearching = !this.isSearching;
                  // }
                  // );

                }
            )
          ],
        ),
      ),
    );
  }
}

class CustomSearchClass extends SearchDelegate<String> {
  final buildings = [
    "Surc",
    "Samuelson",
    "Black Hall"
  ];
  final recentBuildings = [
    "Surc"
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return[
      IconButton(icon: Icon(Icons.clear), onPressed:(){
        query = " ";
      })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //
    return IconButton(icon: AnimatedIcon(
      icon: AnimatedIcons.menu_arrow,
      progress: transitionAnimation,
    ),
        onPressed: (){
      close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {

  }

  @override
  Widget buildSuggestions(BuildContext context) {

    final suggestionList = query.isEmpty ? recentBuildings:buildings;
    
    return ListView.builder(itemBuilder: (context, index) => ListTile(
      leading: Icon(Icons.location_city),
      title: Text(suggestionList[index]),
    ),
      itemCount: suggestionList.length,
    );

  }


}


