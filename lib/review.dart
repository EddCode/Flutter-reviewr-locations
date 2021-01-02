import 'package:flutter/material.dart';
import 'rating.dart';

class Review extends StatelessWidget {
  final String photoPath = "assets/img/people.jpg";
  final double stars;

  Review(this.stars);

  @override
  Widget build(BuildContext ctx) {
    final photo = Container(
        margin: EdgeInsets.only(left: 20),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(photoPath)) // DecorationImage
            ) // BoxDecoration
        ); // Container

    final userName = Container(
      margin: EdgeInsets.only(left: 20),
      child: Text(
        "Edgar Fig",
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Lato", fontSize: 18),
      ), // Text
    ); // Container

    final userInfo = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            "1 review . 5 photos",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 13,
                color: Color.fromRGBO(212, 42, 21, 1)), // TextStyle
          ), // Text
        ), //Container
        Rating(
          stars,
          marginLeft: 10,
          fontSize: 14,
        )
      ],
    );
    final userComment = Container(
      margin: EdgeInsets.only(left: 20),
      child: Text("There is an iconic place",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 16,
              fontWeight: FontWeight.w800) // TextStyle
          ), // Text
    ); //Container

    final userDetails = Column(
      children: <Widget>[userName, userInfo, userComment], // <Widget>[]
    ); // Column

    return Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          children: <Widget>[photo, userDetails], // <Widget>[]
        ) //Row,
        ); // Container
  }
}
