import 'package:capstone_project/Widgets/ComicsGridView.dart';
import 'package:capstone_project/models/Search.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatefulWidget {
  final Search search;

  ResultsPage({Key key, this.search}) : super(key: key);

  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.search.title),
        ),
        body: Center(
            child: ComicsGridView(
          search: widget.search,
        )));
  }
}
