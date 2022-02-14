import 'package:flutter/material.dart';
import 'header/header_profile.dart';
import 'header/profile_background.dart';
import 'places/places_list.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Stack(
        children: <Widget>[
          ProfileBackground(),
          ListView(
            children: [
              HeaderProfile(),
              PlacesList()
            ],
          )
        ],
      ),
    );
  }

}