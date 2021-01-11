import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'dart:core';

/*https://pub.dev/packages/uuid
uuid is a simple yet powerful and useful package. It provides methods to generate random strings
to be used as ID's in our app, usually in the backend. Based on the RFC4122 standard, these are features as stated in the
package's site at pub.dev: 
Features:
    * Generate RFC4122 version 1, version 4, or version 5 UUIDs
    * Runs in web, server, and flutter
    * Cryptographically strong random number generation on all platforms
        Defaults to non-crypto generator, see UuidUtil for cryptoRNG

In my experience, it's important to implement some easy-to-use functionality in order to generate 
random IDs. It's surprising how many times you can find yourself needing some random string in order
to create an object's ID, permalink, or any other field that our data models need to store unique and 
identifiable information.

In this app, I implemented a simple UI with three Text widgets and three RaisedButton widgets
to demostrate some of the functionality of uuid.

Using a Stateful widget as the root Widget of the app with a Scaffold containing all the UI.

Each of the buttons generates a random ID using the methods of uuid's Uuid class. In this example, 
I am using three of the most basic methods, but this package provides much more.
*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UUID Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'UUID Package Example'),
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
  String uuidV1 = "Random UUID_V1";
  String uuidV4 = "Random UUID_V4";
  String uuidV4Num = "Random UUID_V4 from a list of numbers";

  var uuid = new Uuid();
  var numbers = new List<int>.generate(16, (i) => i + 1);

  void _generateUUIDV1() {
    setState(() {
      uuidV1 = uuid.v1();
    });
  }

  void _generateUUIDV4() {
    setState(() {
      uuidV4 = uuid.v4();
    });
  }

  void _generateUUIDV4Num() {
    setState(() {
      uuidV4Num = uuid.v4(options: {'random': numbers});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
              child: Text(
                '$uuidV1',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 90.0),
              child: RaisedButton(
                  onPressed: _generateUUIDV1,
                  child: Text("Generate random UUID")),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
              child: Text(
                '$uuidV4',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 90.0),
              child: RaisedButton(
                  onPressed: _generateUUIDV4, child: Text("Generate UUID_V4")),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
              child: Text(
                '$uuidV4Num',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 90.0),
              child: RaisedButton(
                  onPressed: _generateUUIDV4Num,
                  child: Text("Generate UUID_v4 from a list of numbers")),
            ),
          ],
        ),
      ),
    );
  }
}
