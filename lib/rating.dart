import 'package:flutter/material.dart';

class Rating extends StatelessWidget{
  double stars;
  double marginLeft;
  double margintop;
  double fontSize;

  Rating(this.stars, this.marginLeft, this.fontSize, this.margintop);

  @override
  Widget build(BuildContext context) {
    return getRating(stars);

  }

  Widget getStar(double star) {
    var icon = Icons.star;

    if (star == 0.5) {
      icon = Icons.star_half;
    } else if (star < 0.5) {
      icon = Icons.star_border;
    }
    return Container(
      margin: EdgeInsets.only(right: 3.0),
      child: Icon(
        icon,
        color: Color(0xFFf2C611),
        size: fontSize,
      ),
    );
  }

  Widget getRating(double stars) {
    var list = <Widget>[];
    for (var n = 0; n < 5; n++) {
      list.add(getStar(stars));
      stars--;
    }
    return Container(
      margin: EdgeInsets.only(
        left: marginLeft,
        top: margintop

      ),
      child: Row(
        children: list,
      ),
    );
  }

}