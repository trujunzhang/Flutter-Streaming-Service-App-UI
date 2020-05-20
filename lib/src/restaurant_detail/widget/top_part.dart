import 'package:flutter/material.dart';

import 'mc_lipper.dart';

class ScreenTopPart extends StatefulWidget {
  ScreenTopPart({Key key}) : super(key: key);

  @override
  _ScreenTopPartState createState() => _ScreenTopPartState();
}

class _ScreenTopPartState extends State<ScreenTopPart> {
  Widget buildBg() {
    var image = Image.asset("assets/images/banner.png",
        fit: BoxFit.cover, width: double.infinity);
    return ClipPath(
      clipper: Mclipper(),
      child: Container(
        height: 370.0,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 10.0),
              blurRadius: 10.0)
        ]),
        child: Stack(
          children: <Widget>[
            image,
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                    const Color(0x00000000),
                    const Color(0xD9333333)
                  ],
                      stops: [
                    0.0,
                    0.9
                  ],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(0.0, 1.0))),
              child: Padding(
                padding: EdgeInsets.only(top: 120.0, left: 95.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "The Punisher: Season 2",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45.0,
                          fontFamily: "SF-Pro-Display-Bold"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildFg() {
    return Positioned(
      top: 370.0,
      right: -20.0,
      child: FractionalTranslation(
        translation: Offset(0.0, -0.5),
        child: Row(
          children: <Widget>[
            FloatingActionButton(
              heroTag: null,
              backgroundColor: Colors.white,
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Color(0xFFE52020),
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            FloatingActionButton(
              heroTag: null,
              backgroundColor: Colors.white,
              onPressed: () {},
              child: Icon(
                Icons.photo_camera,
                color: Color(0xFFE52020),
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: RaisedButton(
                onPressed: () {},
                color: Color(0xFFE52020),
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 80.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Write a review",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontFamily: "SF-Pro-Display-Bold"),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTopActionBar(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 420.0,
      child: Stack(
        children: <Widget>[
          buildBg(),
          buildFg(),
          buildTopActionBar(context),
        ],
      ),
    );
  }
}
