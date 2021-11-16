import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey[900],
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[500],
            title: Center(
              child: Text('MY FIRST APP - by: Alexandre Roque',
                style: TextStyle(fontFamily: 'BothWays', fontSize: 30)
              ),
            ),
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/teemo.png')
            ),
          ),
        ),
      ),
  );
}


