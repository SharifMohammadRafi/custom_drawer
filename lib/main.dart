import 'package:custom_drawer/drawer_screen.dart';
import 'package:custom_drawer/home_screen.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        bottomNavigationBar: MyNavigationBar(),
        body: Stack(
          children: [
            //
            DrawerScreen(),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}
