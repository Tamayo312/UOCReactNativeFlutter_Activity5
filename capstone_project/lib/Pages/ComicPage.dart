import 'package:capstone_project/models/Comic.dart';
import 'package:capstone_project/widgets/ComicInfo.dart';
import 'package:flutter/material.dart';

class ComicPage extends StatelessWidget {
  final Comic comic;
  const ComicPage({Key key, this.comic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text(comic.title),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ComicInfo(
                comic: comic,
              ),
            ),
          )),
    );
  }
}
