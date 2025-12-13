import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//statefull: can refresh
//stateless: cant refress
//setstate: to refresh

class MyApp extends StatelessWidget {
  const MyApp ({super.key});


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
    const MyHome ({super.key});

    @override
    State <MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  //put all variables here...
  int current_index = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      title: Text("My First App"),
    centerTitle: true,
    ),

    body: current_index == 0
        ? Center(
            child: Text(
                  'Hello from home'
                  ),
            ):
            Center(
              child: Text(
                  'Hello from profile'
              ),
            ),

    bottomNavigationBar: NavigationBar(
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.home),
          label: 'Home',
          ),
        NavigationDestination(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      onDestinationSelected: (int value) {
      setState(() {
        current_index = value;
      });
      },
      selectedIndex: current_index,
    ),
    );
  }
}

