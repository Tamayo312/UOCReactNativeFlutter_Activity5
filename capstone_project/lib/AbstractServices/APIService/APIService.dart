import 'package:capstone_project/models/Comic.dart';
import 'package:capstone_project/models/Search.dart';

abstract class APIService {
  Future<List> getComicsByTitle(Search search);
  Future<Comic> getComic(String comicID);
}
