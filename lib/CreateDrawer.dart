import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'main.dart';

class CreateDrawer extends StatelessWidget{
  final GoogleMapController mapController;
  CreateDrawer(this.mapController);


  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              title: Text('Alfred-Montgomery Hall'),
              onTap: () {updateLocation(47.00755, -120.53448);}
            ),
            ListTile(
              title: Text('Aquatic Facility'),
              onTap: () {updateLocation(47.00784,-120.53917);}
            ),
            ListTile(
              title: Text('Barto Hall'),
              onTap: () {updateLocation(47.00450,-120.53585);}
            ),
            ListTile(
              title: Text('Beck Hall'),
              onTap: () {updateLocation(47.00356,-120.53625);}
            ),
            ListTile(
              title: Text('Bistro'),
              onTap: () {updateLocation(47.00060,-120.53988);}
            ),
            ListTile(
              title: Text('Black Hall'),
              onTap: () {updateLocation(47.00186,-120.53860);}
            ),
            ListTile(
              title: Text('Bouillon Hall'),
              onTap: () {updateLocation(47.00108,-120.53864);}
            ),
            ListTile(
              title: Text('Brooks Library'),
              onTap: () {updateLocation(47.00510,-120.54132);}
            ),
            ListTile(
              title: Text('Button Hall'),
              onTap: () {updateLocation(47.00049,-120.54347);}
            ),
            ListTile(
              title: Text('Carmody-Munro Hall'),
              onTap: () {updateLocation(47.00790,-120.53455);}
            ),
            ListTile(
              title: Text('CWU Music Building'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('CWU Parking Lot'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Davies Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Dean Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Farrell Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Green Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Hebeler Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Hertz Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Hitchcock Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Hogue Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('International Center'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Language and Literature'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Lind Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('McConnell Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Meisner Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Michaelson Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Mitchell Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Moore Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Nicholson Pavillion'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('North Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Peterson Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Psychology Building'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Randall Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Residence Life Office'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Samuelson'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Science'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Sparks Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Stephens-Whitney Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Students Village Apartments'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Sue Lombard Hall'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('SURC'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Wahle Complex'),
              onTap: () {updateLocation(47.0,-120.5);}
            ),
            ListTile(
              title: Text('Wendell Hill Hall A'),
              onTap: () {updateLocation(47.00322,-120.53845);},
            ),
          ],
        ),
      );
  }
  Future updateLocation(double x, double y) {
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(x,y),zoom: 17),
        ),
      );
  }
}