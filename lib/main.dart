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
        body: Container(
          child: Stack(
            children: [
              SizedBox(
                height: 300,
                child: Center(
                  child: Text(
                    'Hello',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.call, color: Colors.orange,),
                tileColor: Colors.red,
                title: Text('skfjbib'),
                trailing: Text('skjgbug'),
                onTap: () {
                  print('clicked on this listtile');
                },
              )
            ],
          ),
        ),
      ),
    );
  }

}
