import 'package:capstone_project/models/Comic.dart';
import 'package:capstone_project/pages/ComicPage.dart';
import 'package:flutter/material.dart';

class ComicCard extends StatelessWidget {
  final Comic comic;
  const ComicCard({Key key, this.comic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InkWell(
        // onLongPress functionality like Instagram?
        onTap: () {
          _getComic(context, comic);
        },
        highlightColor: Colors.redAccent[100],
        child: Card(
            semanticContainer: true,
            margin: EdgeInsets.all(10),
            elevation: 5,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: comic.getImageNetwork()),
      ),
    );
  }

  _getComic(BuildContext context, Comic comic) {
    Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => ComicPage(
                  comic: comic,
                )));
  }
}
