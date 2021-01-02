import 'package:flutter/material.dart';
import 'rating.dart';
import 'review_list.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final double stars;
  final String descriptionPlace;

  DescriptionPlace(this.namePlace, this.descriptionPlace, this.stars);

  @override
  Widget build(BuildContext ctx) {
    final description = Container(
      margin: EdgeInsets.only(top: 20, right: 20, left: 20),
      child: Text(
        descriptionPlace,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(112, 111, 112, 1)),
        textAlign: TextAlign.left,
      ), // Text.
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 32,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ), // Child
        ), // Container
        Container(child: Rating(3, marginTop: 30)) // Container
      ],
    );

    return Column(
      children: <Widget>[titleStars, description, ReviewList()], // <Widget>[]
    ); // Column
  }
}
