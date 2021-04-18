import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appbar portion, the app title goes here
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text('MBSSKL IT Brigade'),
          elevation: 15,
        ),
        // the rest of our app after the appBar
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            // profile picture, name and title
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png'),
                  radius: 35,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hide The Pain Harold',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Chairman of WallStreetBets',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            // statistics portion
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '15',
                      style: TextStyle(fontSize: 25),
                    ),
                    Row(
                      children: [
                        Icon(Icons.hourglass_bottom_rounded),
                        Text('Duty Hours'),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '32',
                      style: TextStyle(fontSize: 25),
                    ),
                    Row(
                      children: [
                        Icon(Icons.laptop_mac_rounded),
                        Text('Bugs Solved'),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '8',
                      style: TextStyle(fontSize: 25),
                    ),
                    Row(
                      children: [
                        Icon(Icons.nightlight_round),
                        Text('Hours Slept'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Dishonourable Awards',
              style: TextStyle(fontSize: 21),
            ),
            SizedBox(
              height: 20,
            ),
            // award cards portion. add as many as you wish
            Expanded(
              child: ListView(
                children: [
                  Card(
                    elevation: 15,
                    child: ListTile(
                      title: Text('Rock Star'),
                      subtitle: Text('Played music through the lab speaker'),
                      leading: Icon(
                        Icons.music_note_rounded,
                        size: 35,
                        color: Colors.pink[900],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 15,
                    child: ListTile(
                      title: Text('Mischief Managed'),
                      subtitle: Text('Hid stuff in the lab during spotchecks'),
                      leading: Icon(
                        Icons.album_rounded,
                        size: 35,
                        color: Colors.green[900],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 15,
                    child: ListTile(
                      title: Text('Master Chef'),
                      subtitle: Text('Ate in more than 4 occasions in the lab'),
                      leading: Icon(
                        Icons.restaurant_menu_rounded,
                        size: 35,
                        color: Colors.deepOrange[900],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 15,
                    child: ListTile(
                      title: Text('Totall-Not-On-Purpose'),
                      subtitle: Text('Reinstalled Windows on 4 lab PCs'),
                      leading: Icon(
                        Icons.report_problem_rounded,
                        size: 35,
                        color: Colors.red[900],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
