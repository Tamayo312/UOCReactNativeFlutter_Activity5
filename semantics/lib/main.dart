import 'package:flutter/material.dart';
import 'package:semantics/widgets/copyTextField.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      title: 'Semantics Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Semantics Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 90.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'You have pushed the button this many times:',
                          ),
                          Text(
                            '$_counter',
                            style: Theme.of(context).textTheme.headline4,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                CopyTextField()
              ],
            ),
          ),
        ),
        floatingActionButton: Semantics(
          hint: "Double tap to increase.",
          value: 'The counter current value is $_counter.',
          child: ExcludeSemantics(
            key: new Key("Counter button"),
            child: FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: Icon(Icons.add)),
          ),
        ));
  }
}
