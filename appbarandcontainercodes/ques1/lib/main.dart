import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:const Text("Demo"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: <Widget>[
            Padding(
              padding:const EdgeInsets.all(8.0),
              child:Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications),
            ),
          ],  
        ),
      ),
    );
  }
}
