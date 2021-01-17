import 'package:capstone_project/models/Search.dart';
import 'package:capstone_project/pages/ResultsPage.dart';
import 'package:flutter/material.dart';

class SearchBar extends SearchDelegate {
  Search search;

  SearchBar({this.search});

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        });
  }

  @override
  void showResults(BuildContext context) {
    search.title = query;
    Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => ResultsPage(
                  search: search,
                )));
    super.showResults(context);
  }

  @override
  Widget buildResults(BuildContext context) {
    return ResultsPage(search: search);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = [
      "Spider-Man",
      "Captain America",
      "Deadpool",
      "Hawkeye",
      "Thor",
      "Groot"
    ];

    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(suggestions[index]),
            onTap: () {
              search.title = suggestions[index];
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => ResultsPage(
                            search: search,
                          )));
            },
          );
        });
  }
}
