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
          Divider(),
          Text("Classes", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          )),
          ListTile(
              title: Text('Samuelson'),
              onTap: () {updateLocation(47.00163,-120.54058); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Science'),
              onTap: () {updateLocation(47.00318,-120.54156); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Science Phase II'),
              onTap: () {updateLocation(47.00220, -120.54026); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Language and Literature'),
              onTap: () {updateLocation(47.00484,-120.54008); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Psychology Building'),
              onTap: () {updateLocation(47.00672,-120.54017); Navigator.pop(context);}
          ),
          Divider(),
          Text("School Building", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          )),
          ListTile(
              title: Text('International Center'),
              onTap: () {updateLocation(47.00504,-120.53890); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Mary Grupe Conference Center'),
              onTap: () {updateLocation(47.00152, -120.53860); Navigator.pop(context);}
          ),
          Divider(),
          Text("Students", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          )),
          ListTile(
              title: Text('Residence Life Office'),
              onTap: () {updateLocation(47.00405,-120.53610); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Bistro'),
              onTap: () {updateLocation(47.00060,-120.53988); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('SURC'),
              onTap: () {updateLocation(47.00314,-120.53779); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Brooks Library'),
              onTap: () {updateLocation(47.00510,-120.54132); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Student Health and Counseling Center'),
              onTap: () {updateLocation(47.00282, -120.53505); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Students Village Apartments'),
              onTap: () {updateLocation(47.00834,-120.53309); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Wahle Complex'),
              onTap: () {updateLocation(47.00815,-120.54063); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('CWU Green House'),
              onTap: () {updateLocation(47.00413, -120.54252); Navigator.pop(context);}
          ),
          Divider(),
          Text("Sports", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          )),
          ListTile(
              title: Text('Nicholson Pavillion'),
              onTap: () {updateLocation(47.00718,-120.53810); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Aquatic Facility'),
              onTap: () {updateLocation(47.00784,-120.53917); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('CWU Music Building'),
              onTap: () {updateLocation(47.00571,-120.53451); Navigator.pop(context);}
          ),
          Divider(),
          Text("Dorms", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          )),
          ListTile(
              title: Text('Alfred-Montgomery Hall'),
              onTap: () {updateLocation(47.00755, -120.53448); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Barto Hall'),
              onTap: () {updateLocation(47.00450,-120.53585); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Beck Hall'),
              onTap: () {updateLocation(47.00356,-120.53625); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Black Hall'),
              onTap: () {updateLocation(47.00186,-120.53860); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Bouillon Hall'),
              onTap: () {updateLocation(47.00108,-120.53864); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Button Hall'),
              onTap: () {updateLocation(47.00049,-120.54347); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Carmody-Munro Hall'),
              onTap: () {updateLocation(47.00790,-120.53455); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Davies Hall'),
              onTap: () {updateLocation(47.00354,-120.53443); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Dean Hall'),
              onTap: () {updateLocation(47.00405,-120.54181); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Dorothy Pursuer Hall'),
              onTap: () {updateLocation(47.00701, -120.53920); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Farrell Hall'),
              onTap: () {updateLocation(47.00513,-120.54276); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Green Hall'),
              onTap: () {updateLocation(47.00868,-120.53403); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Hebeler Hall'),
              onTap: () {updateLocation(47.00164,-120.54253); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Hertz Hall'),
              onTap: () {updateLocation(47.00225,-120.54133); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Hitchcock Hall'),
              onTap: () {updateLocation(47.00348,-120.53597); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Hogue Hall'),
              onTap: () {updateLocation(47.00554,-120.53646); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Kamola Hall'),
              onTap: () {updateLocation(47.00037, -120.54095); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Kennedy Hall'),
              onTap: () {updateLocation(47.00833, -120.53435); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Lind Hall'),
              onTap: () {updateLocation(47.00027,-120.53833); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('McConnell Hall'),
              onTap: () {updateLocation(47.00065,-120.54166); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Meisner Hall'),
              onTap: () {updateLocation(47.00335,-120.53527); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Michaelson Hall'),
              onTap: () {updateLocation(47.00562,-120.53767); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Mitchell Hall'),
              onTap: () {updateLocation(47.00112,-120.54225); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Moore Hall'),
              onTap: () {updateLocation(47.00503,-120.53776); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('North Hall'),
              onTap: () {updateLocation(47.00344,-120.53920); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Peterson Hall'),
              onTap: () {updateLocation(47.00802,-120.54202); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Quigley Hall'),
              onTap: () {updateLocation(47.00426, -120.53494); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Randall Hall'),
              onTap: () {updateLocation(47.00566,-120.53881); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Shaw-Smyser Hall'),
              onTap: () {updateLocation(47.00056, -120.54269); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Sparks Hall'),
              onTap: () {updateLocation(47.00403,-120.53553); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Stephens-Whitney Hall'),
              onTap: () {updateLocation(47.00412,-120.53866); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Sue Lombard Hall'),
              onTap: () {updateLocation(47.00020,-120.53996); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Wendell Hill Hall A'),
              onTap: () {updateLocation(47.00668,-120.53407); Navigator.pop(context);}
          ),
          ListTile(
              title: Text('Wilson Hall'),
              onTap: () {updateLocation(47.00322, -120.53845); Navigator.pop(context);}
          ),
        ],
      ),
    );
  }

  updateLocation(double x, double y) {
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
            target: LatLng(x,y),zoom: 19),
      ),
    );
  }
}