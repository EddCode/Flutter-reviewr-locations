import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    final star = Container(
      margin: EdgeInsets.only(top: 323, right: 3),
      child: Icon(Icons.star, color: Color.fromRGBO(224, 176, 20, 1)),
    );

    final description = Container(
      margin: EdgeInsets.only(top: 32, right: 20, left: 20),
      child: Text(
        "Lorem ipsum dolor sit amet consectetur adipiscing elit auctor, sapien leo praesent etiam iaculis metus ut, consequat lacinia taciti ultrices at tellus integer. \n\nNulla ad conubia donec senectus netus ultrices semper, metus malesuada ridiculus mollis varius himenaeos tellus, potenti habitasse natoque phasellus integer tristique.",
        style: TextStyle(fontSize: 12),
        textAlign: TextAlign.left,
      ), // Text.
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            "Duwili Ella",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ), // Child
        ), // Container
        Row(
          children: <Widget>[star, star, star, star, star],
        ),
      ],
    );

    return Column(
      children: <Widget>[titleStars, description], // <Widget>[]
    ); // Column
  }
}
