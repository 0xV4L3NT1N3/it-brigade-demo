import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List stats = [1, 2, 4];
  List achievements = ["Duty Hours", "Bugs Solved", "Hours Slept"];
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Facebook',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.grey[50],
          actions: [
            Switch(
              onChanged: null,
              value: isSwitched,
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.grey,
            ),
          ],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Zark Muckberg',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text('President'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(stats[0].toString()),
                        Text(achievements[0])
                      ],
                    ),
                    Column(
                      children: [
                        Text(stats[1].toString()),
                        Text(achievements[1])
                      ],
                    ),
                    Column(
                      children: [
                        Text(stats[2].toString()),
                        Text(achievements[2])
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Dishonourable Awards',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  width: 180,
                  child: Card(
                    child: Center(
                      child: Text('Achievemnt goes here'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
