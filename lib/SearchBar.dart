
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
    'Green Hall',
    'Hebeler Hall',
    'Hertz Hall',
    'Hitchcock Hall',
    'Hogue Hall',
    'International Center',
    'Kamola Hall',
    'Kennedy Hall',
    'Language and Literature',
    'Lind Hall',
    'Mary Grupe Conference Center',
    'McConnell Hall',
    'Meisner Hall',
    'Michaelson Hall',
    'Mitchell Hall',
    'Moore Hall',
    'Nicholson Pavillion',
    'North Hall',
    'Peterson Hall',
    'Psychology Building',
    'Quigley Hall',
    'Randall Hall',
    'Residence Life Office',
    'Samuelson',
    'Science',
    'Science Phase II',
    'Shaw-Smyser Hall',
    'Sparks Hall',
    'Stephens-Whitney Hall',
    'Student Health and Counseling Center',
    'Students Village Apartments',
    'Sue Lombard Hall',
    'SURC',
    'Wahle Complex',
    'Wendell Hill Hall A',
    'Wilson Hall'

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
    'Green Hall':new Coordinates(47.00868,-120.53403),

    'Hebeler Hall':new Coordinates(47.00164,-120.54253),
    'Hertz Hall':new Coordinates(47.00225,-120.54133),
    'Hitchcock Hall':new Coordinates(47.00348,-120.53597),
    'Hogue Hall':new Coordinates(47.00554,-120.53646),
    'International Center':new Coordinates(47.00504,-120.53890),
    'Kamola Hall':new Coordinates(47.00037, -120.54095),
    'Kennedy Hall':new Coordinates(47.00833, -120.53435),
    'Language and Literature':new Coordinates(47.00484,-120.54008),
    'Lind Hall':new Coordinates(47.00027,-120.53833),
    'Mary Grupe Conference Center':new Coordinates(47.00152, -120.53860),
    'McConnell Hall':new Coordinates(47.00065,-120.54166),
    'Meisner Hall':new Coordinates(47.00335,-120.53527),
    'Michaelson Hall':new Coordinates(47.00562,-120.53767),
    'Mitchell Hall':new Coordinates(47.00112,-120.54225),
    'Moore Hall':new Coordinates(47.00503,-120.53776),
    'Nicholson Pavillion':new Coordinates(47.00718,-120.53810),
    'North Hall':new Coordinates(47.00344,-120.53920),
    'Peterson Hall':new Coordinates(47.00802,-120.54202),
    'Psychology Building':new Coordinates(47.00672,-120.54017),
    'Quigley Hall':new Coordinates(47.00426, -120.53494),
    'Randall Hall':new Coordinates(47.00566,-120.53881),
    'Residence Life Office':new Coordinates(47.00405,-120.53610),
    'Samuelson':new Coordinates(47.00123, -120.54013),
    'Science':new Coordinates(47.00318,-120.54156),
    'Science Phase II':new Coordinates(47.00220, -120.54026),
    'Shaw-Smyser Hall':new Coordinates(47.00056, -120.54269),
    'Sparks Hall':new Coordinates(47.00403,-120.53553),
    'Stephens-Whitney Hall':new Coordinates(47.00412,-120.53866),
    'Student Health and Counseling Center':new Coordinates(47.00282, -120.53505),
    'Students Village Apartments':new Coordinates(47.00834,-120.53309),
    'Sue Lombard Hall':new Coordinates(47.00020,-120.53996),
    'SURC':new Coordinates(47.00314,-120.53779),
    'Wahle Complex':new Coordinates(47.00815,-120.54063),
    'Wendell Hill Hall A':new Coordinates(47.00668,-120.53407),
    'Wilson Hall':new Coordinates(47.00322, -120.53845)
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