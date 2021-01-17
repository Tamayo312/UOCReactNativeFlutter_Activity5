import 'package:capstone_project/pages/ResultsPage.dart';
import 'package:capstone_project/models/Search.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = new TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Marvel API"),
              Text("Search your favourite Marvel comics!"),
              TextField(
                controller: _controller,
                decoration: InputDecoration(hintText: "Search by title"),
              ),
              RaisedButton(
                onPressed: () => _search(context, _controller),
                child: Text("Search"),
              )
            ],
          ),
        ),
      ),
    );
  }

  _search(BuildContext context, TextEditingController controller) {
    // Create a new Search object and make it available through the app
    Search search = new Search();
    search.title = controller.text;

    Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => ResultsPage(
                  search: search,
                )));
  }
}
