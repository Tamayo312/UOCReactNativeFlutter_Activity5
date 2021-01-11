import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'widgets/green_widget.dart';
import 'widgets/orange_widget.dart';
import 'models/Counter.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber[100],
        appBar: AppBar(
          title: Text('State with provider'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GreenWidget(),
            OrangeWidget(),
          ],
        ),
      ),
    );
  }
}
