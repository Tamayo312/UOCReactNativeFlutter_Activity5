import 'package:capstone_project/AbstractServices/APIService/APIService.dart';
import 'package:capstone_project/AbstractServices/APIService/Services/APIServiceMock.dart';
import 'package:capstone_project/models/Comic.dart';
import 'package:flutter/material.dart';

class ComicsGridView extends StatefulWidget {
  ComicsGridView({Key key}) : super(key: key);

  @override
  _ComicsGridViewState createState() => _ComicsGridViewState();
}

class _ComicsGridViewState extends State<ComicsGridView> {
  APIService _api = new APIServiceMock();

  @override
  void initState() {
    super.initState();
    getComics();
  }

  List _comics = new List<Comic>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 3,
        children: getGridItems(),
      ),
    );
  }

  getComics() async {
    var comics = await _api.getComicsByTitle("Spider-Man");
    setState(() {
      _comics = comics;
    });
  }

  getGridItems() {
    return _comics.map((comic) => new Text(comic.title)).toList();
  }
}
