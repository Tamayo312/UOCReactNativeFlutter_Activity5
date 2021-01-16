import 'dart:convert';

import 'package:capstone_project/AbstractServices/APIService/APIService.dart';
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

    var _ts = "1";
    var _hash =
        md5.convert(utf8.encode(_ts + _private_key + _public_key)).toString();
    var url = "https://gateway.marvel.com:443/v1/public/comics?title=" +
        search.title +
        "&orderBy=focDate&apikey=7e6ebf4f236b3f7cc478e8ca54e259f1&hash=" +
        _hash +
        "&ts=" +
        _ts;

    var client = http.Client();
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
  Future<Comic> getComic(String comicID) async {
    return new Comic();
  }
}
