import 'package:flutter/material.dart';
import 'review_list.dart';
import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{

  String description_place = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            Description_place("Bahamas", 5, description_place),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],

    );
  }

}