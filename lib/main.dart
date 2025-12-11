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
        body: Image.asset('assets/image/wallpaper.jpg',
            height: double.infinity,
            fit: BoxFit.cover),
      ),
    );
  }
}
