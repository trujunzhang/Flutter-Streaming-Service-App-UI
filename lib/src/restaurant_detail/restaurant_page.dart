import 'package:flutter/material.dart';

import 'widget/bottom_part.dart';
import 'widget/top_part.dart';

class RestaurantDetail extends StatefulWidget {
  const RestaurantDetail({Key? key}) : super(key: key);

  @override
  _RestaurantDetailState createState() => _RestaurantDetailState();
}

class _RestaurantDetailState extends State<RestaurantDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[ScreenTopPart(), ScreenBottomPart()],
        ),
      ),
    );
  }
}
