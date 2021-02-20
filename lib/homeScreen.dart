import 'package:clubhouse/calendarScreen.dart';
import 'package:clubhouse/invitesScreen.dart';
import 'package:clubhouse/notificationsScreen.dart';
import 'package:clubhouse/widgets/labelBelowIcon.dart';
import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          CupertinoIcons.search,
          size: 26,
          color: Colors.black,
        ),
        actions: [
          GestureDetector(
            child: Image.asset(
              'assets/invites-icon.png',
              width: 32,
              height: 32,
              fit: BoxFit.contain,
            ),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => InvitesScreen())),
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.calendar,
              color: Colors.black,
              size: 25,
            ),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => CalendarScreen())),
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.bell_fill,
              color: Colors.black,
              size: 25,
            ),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => NotificationsScreen())),
          ),
          CircleAvatar(
            child: Icon(
              Icons.person_rounded,
              color: Colors.black,
            ),
            backgroundColor: Color(0xa0c4c4c4),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          children: [
            Container(
              width: 350,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffe6e3d5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListTile(
                      leading: Text('11:30 AM'),
                      title: Text('👩🏾‍💻👨🏾‍💻💙 Flutter Devs Hangout '),
                      subtitle: Text(
                        'Making the most of your Flutter learning experience',
                        overflow: TextOverflow.ellipsis,
                      ),
                      onTap: () => showModalBottomSheet(
                        context: context,
                        builder: (_) => Container(
                          width: double.maxFinite,
                          height: MediaQuery.of(context).size.height * .35,
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'TODAY 11:30 AM',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  Icon(CupertinoIcons.bell),
                                ],
                              ),
                              Text(
                                '👩🏾‍💻👨🏾‍💻💙 Flutter Devs Hangout',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'From FLUTTER DEVS',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              ConstrainedBox(
                                constraints: BoxConstraints(maxHeight: 50),
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 10,
                                  itemBuilder:
                                      (BuildContext context, int index) =>
                                          CircleAvatar(
                                    backgroundImage: AssetImage(
                                      'assets/cm$index.jpeg',
                                    ),
                                    radius: 25,
                                  ),
                                ),
                              ),
                              Text(
                                'with a range of developers from over 90 countries discussing the state of Flutter development in their countries, along with the growth and hinderances currently available.',
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  LabelBelowIcon(
                                    icon: CupertinoIcons.share,
                                    label: 'Share',
                                    iconColor: Colors.green,
                                  ),
                                  LabelBelowIcon(
                                    icon: CupertinoIcons.chat_bubble,
                                    label: 'Tweet',
                                    iconColor: Colors.green,
                                  ),
                                  LabelBelowIcon(
                                    icon: CupertinoIcons.doc_on_clipboard,
                                    label: 'Copy Link',
                                    iconColor: Colors.green,
                                  ),
                                  LabelBelowIcon(
                                    icon: CupertinoIcons.calendar_badge_plus,
                                    label: 'Add to Cal',
                                    iconColor: Colors.green,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: Text('2:30 AM'),
                      title: Text('💵 Fintech Bros'),
                      subtitle: Text(
                        'Is it Fintech because of what we choose to call it',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: Text('6:00 PM'),
                      title: Text('💙 🎉Flutter Engage Build Up'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 350,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 5,
                      offset: Offset(0, 1),
                    ),
                  ],
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'STEM appreciation for the Girl Child',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: Stack(
                            alignment: AlignmentDirectional.topStart,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage("assets/cm7.jpeg"),
                              ),
                              Positioned(
                                bottom: 20,
                                right: 20,
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      AssetImage("assets/cm3.jpeg"),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ling Waldner 💬"),
                            Text("Stacy Christensen 💬"),
                            Text(
                              "Rosalva Sadberry 💬",
                            ),
                            Text("Kurt Toms 💬"),
                            Text("Jane Doe 💬"),
                            Text("300👤 / 20 💬")
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 5,
                    offset: Offset(0, 1),
                  ),
                ],
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Youth Entrepreneurship and the current context',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Stack(
                          alignment: AlignmentDirectional.topStart,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage("assets/cm2.jpeg"),
                            ),
                            Positioned(
                              bottom: 20,
                              right: 20,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage("assets/cm4.jpeg"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ling Waldner 💬"),
                            Text("Stacy Christensen 💬"),
                            Text(
                              "Rosalva Sadberry 💬",
                            ),
                            Text("3.5k👤 / 20 💬")
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 5,
                    offset: Offset(0, 1),
                  ),
                ],
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Club: Discussing the latest Hunger Games novel',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Stack(
                          alignment: AlignmentDirectional.topStart,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage("assets/cm1.jpeg"),
                            ),
                            Positioned(
                              bottom: 20,
                              right: 20,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage("assets/cm9.jpeg"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ling Waldner 💬"),
                          Text("Stacy Christensen 💬"),
                          Text("Kurt Toms 💬"),
                          Text("Jane Doe 💬"),
                          Text("1.5k👤 / 200 💬")
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          width: double.maxFinite,
          height: kBottomNavigationBarHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.mirror,
              colors: [
                Color(0xfff1efe4),
                Color(0x0af1efe4),
              ],
            ),
          ),
          child: Row(
            children: [
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/chat-icon.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 0.0,
        icon: const Icon(Icons.add),
        label: const Text('Start a room'),
        backgroundColor: Color(0xff4EAB64),
        foregroundColor: Colors.white,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
