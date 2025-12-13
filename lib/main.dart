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
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
          backgroundColor:
          Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
          leading: Icon(Icons.notifications,
          color: Colors.red,
          ),
        ),
        body: Wrap( //bring to next line if coudn't fit in width of screen bring the text down not individual widgit
          children: [
            Text(
              'hello nv kdfv dfv ndfv ',
            ),
            Text(
                'hello kv nidf vjidf v',
            ),
            Text(
                'hello kjv jnd vhd vhi sidv',
            ),
            Text(
                'hello sgcvusdvubdhivbydv',
            ),
            Text(
                'hello sfsevssevsev',
            ),
          ],
        )
      ),
    );
  }

}
