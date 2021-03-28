import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List stats = [1, 2, 4];
  List achievements = ["Duty Hours", "Bugs Solved", "Hours Slept"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                FlatButton(
                  onPressed: () {},
                  color: Colors.grey,
                  child: Text('Display ID'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
