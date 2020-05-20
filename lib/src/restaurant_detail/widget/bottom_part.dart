import 'package:flutter/material.dart';

import 'photo_view.dart';

class ScreenBottomPart extends StatefulWidget {
  ScreenBottomPart({Key key}) : super(key: key);

  @override
  _ScreenBottomPartState createState() => _ScreenBottomPartState();
}

class _ScreenBottomPartState extends State<ScreenBottomPart> {
  List<String> images = [
    "assets/images/runaways.jpg",
    "assets/images/avengers.jpg",
    "assets/images/blackpanther.jpg"
  ];

  List<String> titles = ["Runaways", "Avengers: infinity war", "Black Panther"];

  List<Widget> movies() {
    List<Widget> movieList = new List();

    for (int i = 0; i < 3; i++) {
      var movieitem = PhotoView();
      movieList.add(movieitem);
    }
    return movieList;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 360.0,
      margin: EdgeInsets.only(left: 5.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Business Photo",
                  style: TextStyle(
                      fontSize: 22.0, fontFamily: "SF-Pro-Display-Bold"),
                ),
                Spacer(),
                FlatButton(
                  child: Icon(Icons.arrow_forward),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 250.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: movies(),
            ),
          )
        ],
      ),
    );
  }
}
