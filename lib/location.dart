import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:blood_bank/login/login.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

class Loc extends StatefulWidget {
  const Loc({Key? key}) : super(key: key);

  @override
  State<Loc> createState() => _LocState();
}

class _LocState extends State<Loc> {
  //to get user current position
  Future getLocation() async {
    bool services;
    LocationPermission per;

    //to check if the location is enable or not
    services = await Geolocator.isLocationServiceEnabled();

    //if the location is not active show that
    if (services == false) {
      Login.showSnackBar(context, "Enable the location");
    }
    //if it is enable check the permission
    per = await Geolocator.checkPermission();

    //if it is denied request Permission and show what ever you want her
    if (per == LocationPermission.denied) {
      per = await Geolocator.requestPermission();

      if (per == LocationPermission.always) {
        //to get position
        getPosition();
      }
    }
    print(per);
  }

  late Position cl;

  Future getPosition() async {
    //get current position from the user location
    return await Geolocator.getCurrentPosition().then((value) => value);
  }
/*
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /*
            Container(
              height: 300,
              width: 400,
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
              
            ),
            */
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                  onPressed: () async {
                    getLocation();
                    //get the position and store it in cl
                    cl = await getPosition();
                    //in cl property latitude and langittude خطوط الطول وخطوط العرض
                    print("lat : ${cl.latitude}");
                    print("long :${cl.longitude}");
                    //here we can get more info about user location using his current location(latitude,latitude)
                    // and srore it in list placemarks
                    List<Placemark> placemarks = await placemarkFromCoordinates(
                        cl.latitude, cl.latitude);
                    print(placemarks[0].administrativeArea);
                  },
                  child: const Text("getLocation")),
            ),
          ],
        ),
      ),
    );
  }
}

/* 
var distanceBetween = Geolocator.distanceBetween(startLan ,satartLong ,endLan ,endLong);
disKM = distanceBetween/1000;
print(disKm);
*/
