import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:servicehub/utils/locationService.dart';

class LocationMapScreen extends StatefulWidget {
  @override
  State<LocationMapScreen> createState() => LocationMapScreenState();
}

class LocationMapScreenState extends State<LocationMapScreen> {
  Completer<GoogleMapController> _controller = Completer();
  // final Geolocator geolocator = Geolocator();

  static CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(5.614818, -0.205874),
    zoom: 14.4746,
  );

  Position _currentPosition;

  static final CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.42796133580664, -122.085749655962),
    tilt: 59.440717697143555,
    zoom: 15.151926040649414,
  );

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Service Location'),
              bottom: TabBar(
                  indicatorColor: Colors.white,
                  indicatorWeight: 3.5,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "SET LOCATION",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "CURRENT LOCATION",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20.0, bottom: 15.0),
                  child: FloatingActionButton.extended(
                    onPressed: _goToTheLake,
                    label: Text('To Services!'),
                    icon: Icon(Icons.directions_boat),
                  ),
                ),
              ],
            ),
            body: TabBarView(
              // physics: NeverScrollableScrollPhysics(),
              children: [
                MapWidget(kGooglePlex: _kGooglePlex, controller: _controller),
                Container()
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  _getCurrentLocation() async {
    try {
      final position = await determinePosition();
      setState(() {
        _currentPosition = position;
        _kGooglePlex = CameraPosition(
          target: LatLng(_currentPosition.latitude, _currentPosition.longitude),
          zoom: 15.4746,
        );
      });
    } catch (e) {
      print(e);
    }
  }
}

class MapWidget extends StatefulWidget {
  const MapWidget({
    Key key,
    @required CameraPosition kGooglePlex,
    @required Completer<GoogleMapController> controller,
  })  : _kGooglePlex = kGooglePlex,
        _controller = controller,
        super(key: key);

  final CameraPosition _kGooglePlex;
  final Completer<GoogleMapController> _controller;

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget>
    with AutomaticKeepAliveClientMixin<MapWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return GoogleMap(
      mapType: MapType.normal,
      mapToolbarEnabled: true,
      myLocationEnabled: true,
      initialCameraPosition: widget._kGooglePlex,
      onMapCreated: (GoogleMapController controller) {
        widget._controller.complete(controller);
      },
      gestureRecognizers: Set()
        ..add(
          Factory<OneSequenceGestureRecognizer>(
            () => EagerGestureRecognizer(),
          ),
        ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
