import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Core2web'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,  
          children: <Widget>[
            Container(
              width: 360,
              height: 200,
              color: Colors.blue, 
            ),
            SizedBox(height: 20),  
            Container(
              width: 360,
              height: 200,
              color: Colors.green,  
            ),
          ],
        ),
      ),
    );
  }
}