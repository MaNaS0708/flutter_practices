import 'package:flutter/material.dart';
import 'package:my_first_app/views/widgets/widget_tree.dart';

void main() {
  runApp(MyApp());
}

//statefull: can refresh
//stateless: cant refress
//setstate: to refresh

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.teal,
        brightness: Brightness.dark
      )
      ),
      home: WidgetTree()
    );
  }
}