
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'main.dart';


class CustomSearchClass extends SearchDelegate<String> {

  GoogleMapController mapController;

  CustomSearchClass(this.mapController);

  final buildings = [
    'Alfred-Montgomery Hall',
    'Aquatic Facility',
    'Barto Hall',
    'Beck Hall',
    'Bistro',
    'Black Hall',
    'Bouillon Hall',
    'Brooks Library',
    'Button Hall',
    'Carmody-Munro Hall',
    'CWU Green House',
    'CWU Music Building',
    'Davies Hall',
    'Dean Hall',
    'Dorothy Pursuer Hall',
    'Farrell Hall',
    'Green Hall'

  ];

  Map<String, Coordinates> map = {
    'Alfred-Montgomery Hall':new Coordinates(47.00755, -120.53448),
    'Aquatic Facility':new Coordinates(47.00784,-120.53917),
    'Barto Hall':new Coordinates(47.00450,-120.53585),
    'Beck Hall':new Coordinates(47.00356,-120.53625),
    'Bistro':new Coordinates(47.00060,-120.53988),
    'Black Hall':new Coordinates(47.00186,-120.53860),
    'Bouillon Hall':new Coordinates(47.00108,-120.53864),
    'Brooks Library':new Coordinates(47.00510,-120.54132),
    'Button Hall':new Coordinates(47.00049,-120.54347),
    'Carmody-Munro Hall':new Coordinates(47.00790,-120.53455),
    'CWU Green House':new Coordinates(47.00413, -120.54252),
    'CWU Music Building' :new Coordinates(47.00571,-120.53451),
    'Davies Hall':new Coordinates(47.00354,-120.53443),
    'Dean Hall':new Coordinates(47.00405,-120.54181),
    'Dorothy Pursuer Hall':new Coordinates(47.00701, -120.53920),
    'Farrell Hall':new Coordinates(47.00513,-120.54276),
    'Green Hall':new Coordinates(47.00868,-120.53403)
  };

  Coordinates cor = new Coordinates(47.00314, -120.53779);



  @override
  List<Widget> buildActions(BuildContext context) {
    return[
      IconButton(icon: Icon(Icons.clear), onPressed:(){
        query = "";
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

    return Card(
      shape: StadiumBorder(),
      child: Center(
        child: Text(query),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    final suggestionList = query.isEmpty ?
    buildings:
    buildings.where((p)=>p.startsWith(query)).toList();

    return ListView.builder(itemBuilder: (context, index) => ListTile(
      onTap: (){
        var s = buildings[index];
        // print(map[s].getLat());
        updateLocation(map[s].getLat(), map[s].getlong()); Navigator.pop(context);
        // showResults(context);
      },
      leading: Icon(Icons.location_city),
      title: Text(suggestionList[index]),
    ),
      itemCount: suggestionList.length,
    );

  }
  updateLocation(double x, double y) {
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
            target: LatLng(x,y),zoom: 18),
      ),
    );
  }


}

class Coordinates{
  double lat;
  double long;

  Coordinates(double n, double m){
    this.lat = n;
    this.long = m;

  }

  double getLat(){
    return lat;
  }
  double getlong(){
    return long;
  }

}