import 'package:capstone_project/models/Comic.dart';

abstract class APIService {
  Future<List> getComicsByTitle(String title);
  Future<Comic> getComic(String comicID);
}
