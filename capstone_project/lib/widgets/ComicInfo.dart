import 'package:capstone_project/models/Comic.dart';
import 'package:capstone_project/pages/CharacterPage.dart';
import 'package:flutter/material.dart';

class ComicInfo extends StatelessWidget {
  final Comic comic;
  const ComicInfo({Key key, this.comic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: comic.getImageNetwork()),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            comic.title ?? "",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(comic.description ?? ""),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Characters",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              getCharacters(context, comic) ?? Text("No results."),
            ],
          ),
        ),
      ],
    );
  }

  Widget getCharacters(BuildContext context, Comic comic) {
    return Column(
        children: comic
            .getCharacters()
            .map((character) => RaisedButton(
                  onPressed: () {
                    getCharacterPage(
                        context, character['name'], character['resourceURI']);
                  },
                  child: Text(character['name']),
                ))
            .toList());
  }

  getCharacterPage(BuildContext context, String name, String url) {
    if (url != null) {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (context) => CharacterPage(
                    name: name,
                    url: url,
                  )));
    }
  }
}
