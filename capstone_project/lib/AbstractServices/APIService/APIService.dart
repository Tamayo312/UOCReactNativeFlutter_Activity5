import 'package:capstone_project/models/Character.dart';
import 'package:capstone_project/models/Search.dart';

abstract class APIService {
  Future<List> getComicsByTitle(Search search);
  Future<Character> getCharacter(String url);
}
