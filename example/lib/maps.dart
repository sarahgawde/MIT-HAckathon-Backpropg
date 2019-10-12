import 'dart:async';
import 'dart:core' as prefix0;
import 'dart:core';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Maps extends StatefulWidget {
  @override
  final String phone;
  Maps(this.phone);
  _MapsState createState() => _MapsState(phone);
}

class _MapsState extends State<Maps> {
   Completer<GoogleMapController> _controller = Completer();
  GoogleMapController mapController;
  Map<MarkerId, Marker> markers = {};
  final String phone;
  String ppl;
  double lat = 0, lng = 0;
  static LatLng _center;
  _MapsState(this.phone);
  final databaseReference = FirebaseDatabase.instance.reference();
  void _onMapCreated(GoogleMapController controller) async {
    mapController = controller;
    

    databaseReference.once().then((DataSnapshot dataSnapshot) {
      var abc = dataSnapshot.value;
      abc.forEach((k, v) {
          if (k.toString() == phone){
           ppl =  v['peepswhoicanc'].toString();
          ppl = ppl.split("{")[1];
          ppl = ppl.split(':')[0];
          print(ppl);
          
          
          }

      });



    

    });
    databaseReference.once().then((DataSnapshot ds) {
      var val = ds.value;
      val.forEach((k ,v) {
          if (k == ppl){
           var lat1 = v['location']['latitude'];
           lat = double.parse('$lat1');
           var lat2 = v['location']['longitude'];
           lng = double.parse("$lat2");
           print(lat);
           print(lng);
           _center = LatLng(lat, lng);
           final markerOptions = Marker(
                markerId: MarkerId(k),
                position: LatLng(
                  lat,
                  lng,
                ));
               markers[k]= markerOptions; 
          }
      });
    });
    
  }

  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();



  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Maps Sample App'),
          backgroundColor: Colors.green[700],
        ),
        body:  new GoogleMap(
                    onMapCreated: _onMapCreated,
                    myLocationEnabled: true,
                   initialCameraPosition: CameraPosition(
              target: const LatLng(0, 0),
              zoom: 2,
              
            ),
            markers: markers.values.toSet(),
    )
    ),
    );
  }
  }
