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
        title: Text('Network Images Example'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: <Widget>[
            Image.network(
              'https://media.istockphoto.com/id/1091007944/photo/flower-rose-petal-blossom-red-nature-beautiful-background.jpg?s=612x612&w=0&k=20&c=yyM7UVayFPAF-0PfNJ3TWCLB-M7CJllCbyEGwo6HK24=   ',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20), 
            Image.network(
              'https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?cs=srgb&dl=pexels-jonaskakaroto-736230.jpg&fm=jpg  ',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20), 
            Image.network(
              'data:image/jpeg;base64,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',
              width: 150,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}