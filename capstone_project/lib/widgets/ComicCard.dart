import 'package:capstone_project/models/Comic.dart';
import 'package:flutter/material.dart';

class ComicCard extends StatelessWidget {
  final Comic comic;
  const ComicCard({Key key, this.comic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        child: InkWell(
          // onLongPress functionality like Instagram?
          onTap: () {
            print("HOLI");
          },
          highlightColor: Colors.redAccent[100],
          child: Card(
              semanticContainer: true,
              margin: EdgeInsets.all(10),
              elevation: 5,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: getImageNetwork(comic)),
        ),
      ),
    );
  }

  getImageNetwork(Comic comic) {
    if (comic.thumbnail.length != 0) {
      return Image.network(comic.thumbnail['path'] + "/portrait_uncanny.jpg",
          fit: BoxFit.fill);
    }
  }
}
