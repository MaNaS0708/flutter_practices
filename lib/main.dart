import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my_first_app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            brightness: Brightness.dark),
        useMaterial3: true,
      ),

      home: Scaffold(
        body: Center(

          child: Container(
            height: 200.0,
            width: 200.0,
            padding: EdgeInsets.all(50.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.red,
            ),
            child: Text(
              'Hello world',
              style: TextStyle(fontSize: 32),
            ),
          ),

        ),
      ),
    );
  }
}
