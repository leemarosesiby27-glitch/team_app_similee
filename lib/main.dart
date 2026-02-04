// main.dart - STARTER CODE
// GitHub Collaborative Activity: Flutter Team Challenge
// Replace your entire lib/main.dart file with this code

import 'package:flutter/material.dart';

// The main entry point of the app
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TIP: The MaterialApp wraps your whole app and sets theme + navigation.
      title: 'My First Flutter App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TIP: Scaffold gives you a page layout with appBar + body.
      appBar: AppBar(title: Text('Welcome to Class')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TIP: Widgets appear in order from top to bottom.
            Text(
              'Hello, Flutter!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Adds space between widgets

            Text(
              'This is my first modification.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Button Clicked!');
              },

              child: Text('Click Me'),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.sports_soccer,
                  size: 40,
                  color: Theme.of(context).colorScheme.primary,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.music_note,
                  size: 40,
                  color: Theme.of(context).colorScheme.primary,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.videogame_asset,
                  size: 40,
                  color: Theme.of(context).colorScheme.primary,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.travel_explore,
                  size: 40,
                  color: Theme.of(context).colorScheme.primary,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.book,
                  size: 40,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),

            Card(
              elevation: 4,
              margin: EdgeInsets.all(16),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Icon(Icons.person, size: 50, color: Colors.blue),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Student Name',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Major: Computer Science',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
