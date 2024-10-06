import'package:flutter/material.dart';

void main(){
  runApp(const MainApp());

}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text(
            "Column Demo",
            style:TextStyle(fontSize: 30,fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfmkyH6iwqUi33sP47XS2AhTzNkxZyqVcJ-g&s  "),
               Container(
                height:200,
                width:200,
                color: Colors.amber,
              ),
              Image.network("https://www.bollywoodhungama.com/wp-content/uploads/2016/04/wakeupsid1-1.jpg "),
              Container(
                height:200,
                width:200,
                color:Colors.amber,
              ),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7QDVSBTvcxuSB5csXzVIPDIxs8HEMOUNCMQ&s "),
              Container(
                height:200,
                width: 200,
                color:Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
              
  
