import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container with Red Border and Rounded Corners'),
        ),
        body: Center(
          child: BorderedRoundedContainer(),
        ),
      ),
    );
  }
}

class BorderedRoundedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red, // Red border color
          width: 5, // Border width
        ),
        borderRadius: BorderRadius.circular(20), 
      ),
      child: Center(
        child: Text(
          'Container with rounded corners',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}