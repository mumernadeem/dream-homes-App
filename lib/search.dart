import 'package:dream_homes/favorite.dart';
import 'package:dream_homes/home.dart';
import 'package:dream_homes/menu.dart';
import 'package:dream_homes/notification.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  static const _initialCameraPosition= CameraPosition(
    target: LatLng(31.5204, -74.3587),
    zoom: 11.5,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text('Google Maps'),
      ),
      body:Column(
        children: [
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Container(
                  child: GoogleMap(
                    initialCameraPosition: _initialCameraPosition,
                    myLocationButtonEnabled: false,
                    zoomControlsEnabled: false,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Container(
                    child: Column(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.blueAccent,
                            ),
                            onPressed: () {
                            }),
                        Text(
                          'Search',
                          style:
                          TextStyle(fontSize: 10, color: Colors.blueAccent),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.09,
                  ),
                  Container(
                      child: Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Favorite();
                                }));
                              }),
                          Text(
                            'Favorite',
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                        ],
                      )),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                  Container(
                    child: Column(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.notifications_none,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Notifi();
                              }));
                            }),
                        Text(
                          'Notification',
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.09,
                  ),
                  Container(
                      child: Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.menu,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Menu();
                                }));
                              }),
                          Text(
                            'Menu',
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.only(bottom: 0, right: 145),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 0.16,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.blueAccent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Home();
                    }));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
