import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//stateless
//material app
//scaffold

//stateless
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  //material app
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),//Scaffold
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                  child: Text('Drawer header')
              ),
              ListTile(
                title: Text('logout'),
              ),
            ],
          ),
        ),

      ),
    );
  }
}