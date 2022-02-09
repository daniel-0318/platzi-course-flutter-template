import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'rating.dart';
import 'button_purple.dart';

class Description_place extends StatelessWidget{

  String namePlace;
  double stars;
  String descriptionPlace;

  Description_place(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize:  30.0,
              fontFamily: "Lato",
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Rating(stars, 20.0, 30.0,320)
      ],
    );
    
    final description = Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(descriptionPlace,
        style: TextStyle(
          fontFamily: "Lato",
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)
        ),
        textAlign: TextAlign.justify,
      ),
    );

    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        title_stars,
        description,
        ButtonPurple("Navigate")
      ],
    );

    return content;
  }
  
}