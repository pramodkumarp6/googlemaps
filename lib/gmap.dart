import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:collection';


class GMap extends StatefulWidget {
   MapType MapType_currentMapType = MapType.normal;

  GMap({Key key}) : super(key: key);
  @override
  _GMapState createState() => _GMapState();
}

class _GMapState extends State<GMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Map'),
      ),

      body:   Stack(
        children: <Widget>[GoogleMap(initialCameraPosition: CameraPosition(
          target: LatLng(37.77483, -122.41942),
          zoom:20,

        ),

        ),
          Container(
            alignment: Alignment.bottomRight ,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
            child: Text('Hello'),

          )

        ],
      )


    );
  }
}


