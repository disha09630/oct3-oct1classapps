import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState () => _MainAppState();
}

class _MainAppState extends State{
  TextEditingController nameController = TextEditingController();
  String? myName;
  List<String> playerList =[];
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       appBar: AppBar(
        title: const Text("Textfield List view",
        style: TextStyle(
          fontSize: 30,
        ),
        ),
         centerTitle: true,
         backgroundColor: Colors.blue,
       ),
       body: Column(
        children:[
          const SizedBox( 
            height:20,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              style: const TextStyle(
                fontSize:30,
              ),
              decoration: const InputDecoration(
                hintText: "ENTER NAME",
                hintStyle:TextStyle(
                  fontSize: 25,
                color: Colors.grey,
              ),
              border: OutlineInputBorder(),
            ), 
            onChanged: (String val){
              print ("Value: $val");
            },
            onEditingComplete: (){
              print("Editing Completed");
            },

            onSubmitted:(value){
              print("EDITING submitted: $value");
            },
          ),
       ),
       const SizedBox(
        height:20,
       ),
       GestureDetector(
        onTap: (){
          print("ADD DATA ");
          myName = nameController.text.trim();
          if(myName !=""){
            playerList.add(myName!);
            print("Playerlist length: ${playerList.length}");
            nameController.clear();
            setState((){});
          }        
          },
        
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal:15,
            vertical: 5,
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Text("ADD data",
          style: TextStyle(
            fontSize:25,
            color: Colors.white,
          ),
          ),
        ),
       ),
       const SizedBox(
        height:40,
       ),
       ListView.builder(
        itemCount: playerList.length,
        shrinkWrap: true,
        itemBuilder:(context,index ){
        
          return Text(
            "NAME: ${playerList[index]}",
          style: const TextStyle(
            fontSize: 25,
          ), 
         );
        },
         ) 
        ],
       
       ),
      ),
    );
  }
}