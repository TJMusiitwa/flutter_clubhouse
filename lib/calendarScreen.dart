import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text(
          'UPCOMING FOR YOU',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.calendar_badge_plus),
            onPressed: () {},
            color: Colors.black,
          )
        ],
      ),
      body: ListView(),
    );
  }
}
