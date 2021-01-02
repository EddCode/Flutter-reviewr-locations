import 'package:flutter/material.dart';
import 'rating.dart';

class Review extends StatelessWidget {
  final double stars;
  final String avatar;
  final String name;

  Review(this.name, this.stars, this.avatar);

  @override
  Widget build(BuildContext ctx) {
    final photo = Container(
        margin: EdgeInsets.only(left: 20),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(avatar)) // DecorationImage
            ) // BoxDecoration
        ); // Container

    final userName = Container(
      margin: EdgeInsets.only(left: 20),
      child: Text(
        name,
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
                color: Color.fromRGBO(122, 122, 125, 1)), // TextStyle
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
      child: Text(
        "There is an iconic place",
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 16,
            fontWeight: FontWeight.w400), // TextStyle
        textAlign: TextAlign.left,
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
