import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FoodTab extends StatefulWidget {
  @override
  _FoodTabState createState() => _FoodTabState();
}

class _FoodTabState extends State<FoodTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      _buildListItem('Delcious hot dog', 4.0, '6', 'assets/burger.png'),
    ]));
  }
}

_buildListItem(String foodName, rating, String price, String imageAdress) {
  return Padding(
    padding: EdgeInsets.all(15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 210,
          child: Row(
            children: [
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color(0xFFFFF3DF),
                ),
                child: Center(
                    child: Image.asset(imageAdress, height: 50, width: 50)),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(foodName,
                      style: GoogleFonts.notoSans(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      )),
                  SmoothStarRating(
                    allowHalfRating: false,
                    onRatingChanged:
                  ),
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}
