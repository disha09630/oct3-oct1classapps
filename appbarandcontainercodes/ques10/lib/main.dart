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
          title: Text('Custom Rounded Corners Container'),
        ),
        body: Center(
          child: CustomRoundedContainer(),
        ),
      ),
    );
  }
}

class CustomRoundedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.green, // Container background color
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),  // Top-left corner rounded
          bottomRight: Radius.circular(20), // Bottom-right corner rounded
        ),
      ),
      child: Center(
        child: Text(
          'Rounded Top-left & Bottom-right',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}