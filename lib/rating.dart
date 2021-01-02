import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final double stars;
  final double marginLeft;
  final double marginTop;
  final double fontSize;

  Rating(this.stars,
      {this.marginLeft: 0, this.marginTop: 0, this.fontSize: 24});

  Widget getStars(double star) {
    var icon = Icon(
      Icons.star,
      color: Color(0xFFf2C611),
      size: fontSize,
    );

    if (star == 0.5) {
      icon = Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
        size: fontSize,
      );
    } else {
      if (star < 0.5) {
        icon = Icon(
          Icons.star_border,
          color: Color(0xFFa3a5a7),
          size: fontSize,
        );
      }
    }

    return Container(
        margin: EdgeInsets.only(right: 3), child: icon); // Container
  }

  Widget getRating(double stars) {
    List listStars = List<Widget>();

    for (var n = 0; n < 5; n++) {
      listStars.add(getStars(stars));
      stars--;
    }

    return Container(
      margin: EdgeInsets.only(top: marginTop, left: marginLeft),
      child: Row(children: listStars), // Row
    ); // Container
  }

  @override
  Widget build(BuildContext context) {
    return getRating(stars);
  }
}
