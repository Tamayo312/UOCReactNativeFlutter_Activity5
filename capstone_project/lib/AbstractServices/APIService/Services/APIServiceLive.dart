import 'dart:convert';

import 'package:capstone_project/AbstractServices/APIService/APIService.dart';
import 'package:capstone_project/models/Character.dart';
import 'package:capstone_project/models/Comic.dart';
import 'package:capstone_project/models/Search.dart';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';

const _public_key = "7e6ebf4f236b3f7cc478e8ca54e259f1";
const _private_key = "7f5f3d2a2c5ced8d507867c2477699c82cf93ab6";

class APIServiceLive extends APIService {
  @override
  Future<List> getComicsByTitle(Search search) async {
    List comics = new List.empty();

    var client = http.Client();
    var url = getComicsURLBySearch(search);

    try {
      final uriResponse = await client.get(url);
      final json = jsonDecode(uriResponse.body);

      if (json['code'] == 200) {
        comics = json['data']['results']
            .map((comic) => Comic.fromJson(comic))
            .toList();
      }
    } finally {
      client.close();
    }

    return comics;
  }

  @override
  Future<Character> getCharacter(String url) async {
    Character character = new Character();

    var client = http.Client();
    var _url = getCharacterURL(url);

    try {
      final uriResponse = await client.get(_url);
      final json = jsonDecode(uriResponse.body);

      if (json['code'] == 200) {
        character = Character.fromJson(json['data']['results'][0]);
      }
    } finally {
      client.close();
    }

    return character;
  }

  String generateURLHash(_ts) {
    return md5
        .convert(utf8.encode(_ts + _private_key + _public_key))
        .toString();
  }

  String getCharacterURL(String url) {
    var _ts = "1";
    var _hash = generateURLHash(_ts);

    return url +
        "?apikey=7e6ebf4f236b3f7cc478e8ca54e259f1&hash=" +
        _hash +
        "&ts=" +
        _ts;
  }

  String getComicsURLBySearch(Search search) {
    var _ts = "1";
    var _hash = generateURLHash(_ts);

    var url =
        "https://gateway.marvel.com:443/v1/public/comics?&orderBy=-onsaleDate&apikey=7e6ebf4f236b3f7cc478e8ca54e259f1&hash=" +
            _hash +
            "&ts=" +
            _ts;

    if (search.title != "") {
      url += "&title=" + search.title;
    }

    if (search.dateDescriptor != null) {
      url += "&dateDescriptor=" + search.dateDescriptor;
    }

    if (search.characters != null) {
      url += "&characters=" + search.characters.toString();
    }

    if (search.sharedAppearances != null) {
      url += "&sharedAppearances=" + search.sharedAppearances.toString();
    }

    return url;
  }
}
