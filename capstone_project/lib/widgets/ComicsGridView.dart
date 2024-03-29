import 'package:capstone_project/AbstractServices/APIService/APIService.dart';
import 'package:capstone_project/AbstractServices/APIService/Services/APIServiceLive.dart';
import 'package:capstone_project/AbstractServices/APIService/Services/APIServiceMock.dart';
import 'package:capstone_project/models/Comic.dart';
import 'package:capstone_project/models/Search.dart';
import 'package:capstone_project/widgets/ComicCard.dart';
import 'package:flutter/material.dart';

class ComicsGridView extends StatefulWidget {
  final Search search;
  ComicsGridView({Key key, this.search}) : super(key: key);

  @override
  _ComicsGridViewState createState() => _ComicsGridViewState();
}

class _ComicsGridViewState extends State<ComicsGridView> {
  APIService _api = new APIServiceLive();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    getComics(widget.search);
  }

  List _comics = new List<Comic>();

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.7;
    final double itemWidth = size.width / 2;

    return Container(
      child: GridView.count(
        childAspectRatio: (itemWidth / itemHeight),
        crossAxisCount: 2,
        children: getGridItems(),
      ),
    );
  }

  getComics(Search search) async {
    var comics = await _api.getComicsByTitle(search);
    if (mounted) {
      setState(() {
        _comics = comics;
      });
    }
  }

  getGridItems() {
    return _comics.map((comic) => ComicCard(comic: comic)).toList();
  }
}
