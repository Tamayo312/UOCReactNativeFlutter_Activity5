import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    TextEditingController controller = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              Semantics(
                  onCopy: () {
                    debugPrint('Hey, your text has been copied!');
                  },
                  onCut: () {
                    debugPrint('I said copy.');
                  },
                  child: Text("Copy this text")),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration:
                          InputDecoration(hintText: "Copy your text here"),
                      controller: controller,
                      autocorrect: false,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.content_copy),
                    onPressed: () {
                      FlutterClipboard.copy(controller.text);
                    },
                  )
                ],
              )
            ],
          ),
        ),
        floatingActionButton: Semantics(
          label: "Press this button to increase",
          hint: "Press to increase",
          value: '$_counter',
          child: FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: Icon(Icons.add)),
        ));
  }
}
