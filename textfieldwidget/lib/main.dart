import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override

  State createState() => _MainAppState();
}

class _MainAppState extends State{
TextEditingController nameController = TextEditingController();
String? myName;

  @override 
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       appBar: AppBar(
          title: const Text("TEXTFIELD WIDGET ",
          style: TextStyle(
            fontSize: 30,
          ),
          ),

          centerTitle:true,
          backgroundColor: Colors.blue,  
       ),
       body: Column(
        children :[
          const SizedBox(
            height:20,
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: nameController,
              style: TextStyle(
                fontSize:30,
              ),
              obscureText: true,
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.visibility),
                hintText: "ENTER NAME",
                hintStyle: TextStyle(
                  fontSize:25,
                  color:Colors.grey,

                ),
                border: OutlineInputBorder(),
                ),
               onChanged: (String val){
                print("Value: $val");
               },
               onEditingComplete: (){
                print(" EDITING COMPLETED");
               },
               onSubmitted: (value){
                print("Value Submitted");
               }
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                print("Add Data");
                myName = nameController.text;
                print("MY NAME :$myName");
                nameController.clear();
                setState(() {});

              },

              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color:Colors.blue,
                  borderRadius:BorderRadius.circular(15),
                ),
                child: const Text(
                  "ADD DATA",
                   style: TextStyle(
                fontSize:25,
              color: Colors.white,
              ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "NAME : $myName",
               style: TextStyle(
                fontSize:20,
               ), 
            )
          
        ],
       ),
      ),
    );
  }
}