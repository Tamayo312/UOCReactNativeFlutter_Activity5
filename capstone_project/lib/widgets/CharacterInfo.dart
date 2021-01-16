import 'package:capstone_project/AbstractServices/APIService/APIService.dart';
import 'package:capstone_project/AbstractServices/APIService/Services/APIServiceLive.dart';
import 'package:flutter/material.dart';
import '../models/Character.dart';

class CharacterInfo extends StatefulWidget {
  final String url;
  CharacterInfo({Key key, this.url}) : super(key: key);

  @override
  _CharacterInfoState createState() => _CharacterInfoState();
}

class _CharacterInfoState extends State<CharacterInfo> {
  APIService _api = new APIServiceLive();
  Character _character = new Character();
  Image _image;

  @override
  void initState() {
    super.initState();
    getCharacter(widget.url);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: _image ?? Text("")),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            _character.name ?? "",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(_character.description ?? ""),
        ),
      ],
    );
  }

  getCharacter(String url) async {
    var character = await _api.getCharacter(url);
    setState(() {
      _character = character;
      _image = character.getImageNetwork();
    });
  }
}
