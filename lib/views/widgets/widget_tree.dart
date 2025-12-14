import 'package:flutter/material.dart';
import 'package:my_first_app/views/pages/home_page.dart';
import 'package:my_first_app/views/pages/profile_page.dart';
import 'package:my_first_app/views/widgets/navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Map'),
        ),
        body: pages.elementAt(0),
        bottomNavigationBar: NavbarWidget(),
    );
  }
}