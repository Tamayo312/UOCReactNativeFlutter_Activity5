import 'package:capstone_project/Pages/ResultsPage.dart';
import 'package:capstone_project/models/Search.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

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
