import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationsScreen extends StatelessWidget {
  static var _random = new Random();
  static var names = ['Lewis', 'Danny', 'Janie', 'Krissy', 'Lorraine', 'JT'];
  static var randomName = (names..shuffle(_random));

  static var notifs = [
    "${names[_random.nextInt(5)]} and ${_random.nextInt(5)} joined using your invite link",
    "${names[_random.nextInt(5)]} started following you",
    "${names[_random.nextInt(5)]} asked you to join a room",
    "${names[_random.nextInt(5)]} invited you and ${_random.nextInt(100)} others to a room",
  ];
  List activity = List.generate(
      20,
      (index) => {
            "name": names[_random.nextInt(5)],
            "time": "${_random.nextInt(50)} min ago",
            "notif": notifs[_random.nextInt(4)],
            "dp": "assets/cm${_random.nextInt(10)}.jpeg",
          });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text(
          'ACTIVITY',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          itemCount: activity.length,
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            height: 10,
          ),
          itemBuilder: (BuildContext context, int index) {
            Map activ = activity[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  activ['dp'],
                ),
                radius: 25,
              ),
              contentPadding: EdgeInsets.all(0),
              title: Text(activ['notif']),
              trailing: Text(
                activ['time'],
                style: Theme.of(context).textTheme.caption,
              ),
            );
          },
        ),
      ),
    );
  }
}
