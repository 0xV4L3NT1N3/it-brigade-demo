import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // variable declarations go at the top
  List stats = [1, 2, 4];
  List achievements = ["Duty Hours", "Bugs Solved", "Hours Slept"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // disable debug banner
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // top appBar
        appBar: AppBar(
          title: Text(
            'Facebook',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.grey[50],
          actions: [
            Switch(
              value: false,
              onChanged: null,
              inactiveThumbColor: Colors.black,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              // name, title and profile photo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 43,
                    backgroundColor: Colors.blueGrey,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey[50],
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('images/profile.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Zark Muckberg',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'President',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              // interesting stats
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        '24',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text('Duty Days'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '34',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text('Bugs Solved'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '4',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text('Hours Slept'),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Dishonourable Awards',
                      style: TextStyle(fontSize: 22),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              // achievement cards
              ListView(
                shrinkWrap: true,
                children: [
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.music_note_rounded,
                        color: Colors.pinkAccent,
                        size: 35,
                      ),
                      title: Text('Rock Star'),
                      subtitle: Text('Blasted music through the lab speaker'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.restaurant_menu,
                        color: Colors.green,
                        size: 35,
                      ),
                      title: Text('Master Muncher'),
                      subtitle: Text('Ate in the lab more than twice'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.laptop_chromebook_rounded,
                        color: Colors.lightBlueAccent,
                        size: 35,
                      ),
                      title: Text('Totally Not-On-Purpose'),
                      subtitle: Text('Destroyed more than 3 lab PCs'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
