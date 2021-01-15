import 'dart:convert';

import 'package:capstone_project/AbstractServices/APIService/APIService.dart';
import 'package:capstone_project/models/Comic.dart';
import 'package:flutter/services.dart' show rootBundle;

class APIServiceMock extends APIService {
  @override
  Future<List> getComicsByTitle(String title) async {
    List comics = new List.empty();

    // Get mock Marvel API response form .json file
    final response = await rootBundle.loadString('mocks/comics.json');
    final json = jsonDecode(response);

    if (json['code'] == 200) {
      comics = json['data']['results']
          .map((comic) => Comic.fromJson(comic))
          .toList();
    }

    return comics;
  }

  @override
  Future<Comic> getComic(String comicID) async {
    return new Comic();
  }
}
