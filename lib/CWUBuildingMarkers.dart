import 'dart:typed_data';

import 'package:cwu_gps/Routes/BouillonRoute.dart';

import 'package:cwu_gps/Routes/McConnell_Hall.dart';
import 'package:cwu_gps/Routes/SURCRoute.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'Routes/SecondRoute.dart';
import 'Routes/AquaticRoute.dart';
import 'Routes/FarrellRoute.dart';
import 'Routes/BargeRoute.dart';
import 'Routes/DiscoveryRoute.dart';
import 'Routes/Science_Building.dart';
import 'Routes/Randall_Hall.dart';
import 'Routes/Psychology_Building.dart';
import 'Routes/Nicholson_Pavillion.dart';
import 'Routes/Music_Building.dart';
import 'Routes/Lind_Hall.dart';
import 'Routes/Literature_Building.dart';
import 'Routes/Library.dart';
import 'Routes/Samuelson.dart';
import 'Routes/Houge_Hall.dart';
import 'Routes/BlackRoute.dart';
import 'Routes/HebelerRoute.dart';
import 'dart:ui' as ui;

class CWUBuildingMarkers {

  BitmapDescriptor icon1;
  BitmapDescriptor icon2;
  BitmapDescriptor icon3;

  //List of all CWU Building Markers
  // If you want to add a building add it to the function add Markers
  
  Set<Marker> cwuBuildingMarkers = {};
 
  //Resizes Markers
  //Converts png file to byte data for BitmapDescriptor
  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png)).buffer.asUint8List();
  }


  //Will add markers to the CWUBuildingMarkers set.
  //Copy paste this context for each route
  void addMarkers(BuildContext context, BitmapDescriptor icon1, BitmapDescriptor icon2, BitmapDescriptor icon3) {
    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('SURC'),
        icon: icon3,
        position: LatLng(47.00251437, -120.53840126),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SURCRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Samuelson'),
        icon: icon1,
        position: LatLng(47.00132552932142, -120.54041518469886),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SamuelsonRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Discovery'),
        icon: icon1,
        position: LatLng(47.002181595909654, -120.54023815890388),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DiscoveryRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Library'),
        icon: icon1,
        position: LatLng(47.005174062776526, -120.54117156764106),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LibraryRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Science'),
        icon: icon1,
        position: LatLng(47.00321912874942, -120.541680623801),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ScienceRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Dean'),
        icon: icon1,
        position: LatLng(47.00396023282002, -120.54168474023467),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Hertz'),
        icon: icon1,
        position: LatLng(47.002348879784485, -120.54143363778093),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Hebeler'),
        icon: icon1,
        position: LatLng(47.001585294823165, -120.54254095843785),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HebelerRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Mitchell'),
        icon: icon1,
        position: LatLng(47.0011698101859, -120.54205110283124),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('McConnel'),
        icon: icon1,
        position: LatLng(47.00051880219437, -120.54161675834392),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => McconnellRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Barge Hall'),
        icon: icon1,
        position: LatLng(47.00029758226216, -120.54211334947867),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BargeRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Shaw-Smyser'),
        icon: icon1,
        position: LatLng(47.000591781764946, -120.54267849359815),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Black'),
        icon: icon1,
        position: LatLng(47.00186402691532, -120.53862452631579),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BlackRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Bouillon'),
        icon: icon1,
        position: LatLng(47.00084444542964, -120.53862030307009),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BouillonRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Lind'),
        icon: icon1,
        position: LatLng(47.000239599759986, -120.53864141929905),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LindRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Language and Lit'),
        icon: icon1,
        position: LatLng(47.00483932753819, -120.5401023722046),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LanguageRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Randall'),
        icon: icon1,
        position: LatLng(47.00566545465137, -120.53878305109491),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RandallRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Michaelsen'),
        icon: icon1,
        position: LatLng(47.00562773223052, -120.5375245791763),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Psychology'),
        icon: icon1,
        position: LatLng(47.006627367382926, -120.5401881142477),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PsychRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Aquatics'),
        icon: icon1,
        position: LatLng(47.00776277933699, -120.53911772164902),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AquaticRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Purser'),
        icon: icon1,
        position: LatLng(47.00695554541131, -120.53920899543654),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Nicholson'),
        icon: icon1,
        position: LatLng(47.00711397546175, -120.53801137270962),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NicholsonRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Hogue Tech'),
        icon: icon1,
        position: LatLng(47.00565214127922, -120.53636143417745),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HogueRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Jerilyn'),
        icon: icon1,
        position: LatLng(47.00569875782784, -120.53466667244288),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MusicRoute()));}));

    cwuBuildingMarkers.add(Marker(
        markerId: MarkerId('Farrell'),
        icon: icon1,
        position: LatLng(47.005112, -120.542751),
        onTap: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FarrellRoute()));}));


  }
}


