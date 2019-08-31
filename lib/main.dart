import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layouts App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue,
        accentColor: Colors.lightBlueAccent,
        textTheme: TextTheme(
          body1: TextStyle(fontSize: 24),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layouts'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(50),
              width: 400,
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  repeat: ImageRepeat.repeatY,
                  image: NetworkImage('http://bit.ly/flutter_tiger'),
                ),
                color: Colors.orange,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.lightbulb_outline),
          onPressed: () {},
        ),
        persistentFooterButtons: <Widget>[
          IconButton(
            icon: Icon(Icons.add_comment),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.alarm),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add_location),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
