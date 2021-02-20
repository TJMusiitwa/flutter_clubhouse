import 'package:flutter/material.dart';

class InvitesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text(
          'YOU HAVE 5 INVITES',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'We need access to your contacts in order for you to choose people to invite.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 5,
          ),
          RaisedButton(
            shape: StadiumBorder(),
            elevation: 0,
            child: Text('Allow'),
            color: Theme.of(context).accentColor,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
