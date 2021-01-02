import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        new Review("Nancy Glez", 3, "assets/img/nancy.jpg"),
        new Review("Rafa LH", 1, "assets/img/rafa.jpg"),
        new Review("Edgar Fig", 5, "assets/img/cloneWars.jpg"),
      ],
    ); // Column
  }
}
