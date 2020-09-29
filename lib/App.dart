import 'package:CyberMart/Bottomnavbar.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CybeRMart App',
      home: Bottomnavbar(),
    );
  }
}
