import 'package:flutter/material.dart';

import 'widget/bottom_part.dart';
import 'widget/top_part.dart';

class RestaurantDetail extends StatefulWidget {
  @override
  _RestaurantDetailState createState() => new _RestaurantDetailState();
}

class _RestaurantDetailState extends State<RestaurantDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[ScreeTopPart(), ScreenBottomPart()],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color(0xFFE52020)),
              title: Text("Home", style: TextStyle(color: Color(0xFFE52020)))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              title: Text("Search", style: TextStyle())),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_border,
              ),
              title: Text(
                "Bookmark",
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), title: Text("Profile"))
        ],
      ),
    );
  }
}
