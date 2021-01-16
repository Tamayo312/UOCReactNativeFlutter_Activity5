import 'package:capstone_project/Pages/SearchPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MarvelAPI());
}

class MarvelAPI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marvel API',
      theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: SearchPage(),
    );
  }
}
