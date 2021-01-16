import 'package:capstone_project/widgets/CharacterInfo.dart';
import 'package:flutter/material.dart';

class CharacterPage extends StatelessWidget {
  final String name;
  final String url;
  const CharacterPage({Key key, this.name, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(name),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CharacterInfo(url: url),
          ),
        ),
      ),
    );
  }
}
