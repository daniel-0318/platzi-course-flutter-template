import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("assets/img/people.jpg", "Daniel Ramirez", "1 review 5 photos", "there is an amazing place in Sri lanka", 4),
        Review("assets/img/people.jpg", "Felipe Blandon", "2 review 3 photos", "there is an amazing place in Sri lanka", 4.5),
        Review("assets/img/girl.jpg", "AndreaPerez", "1 review 5 photos", "there is an amazing place in Sri lanka", 3),
      ],
    );
  }

}