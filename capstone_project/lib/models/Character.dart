import 'package:flutter/material.dart';

class Character {
  int id;
  String name;
  String description;
  String modified;
  String resourceURI;
  List urls;
  Map thumbnail;
  Map comics;
  Map stories;
  Map events;
  Map series;

  Character(
      {this.id,
      this.name,
      this.description,
      this.modified,
      this.resourceURI,
      this.urls,
      this.thumbnail,
      this.comics,
      this.stories,
      this.events,
      this.series});

  factory Character.fromJson(Map<String, dynamic> json) {
    return new Character(
        id: json['id'] as int,
        name: json['name'] as String,
        description: json['description'] as String,
        modified: json['modified'] as String,
        resourceURI: json['resourceURI'] as String,
        urls: json['urls'] as List,
        thumbnail: json['thumbnail'] as Map,
        comics: json['comics'] as Map,
        stories: json['stories'] as Map,
        events: json['events'] as Map,
        series: json['series'] as Map);
  }

  getImageNetwork() {
    if (this.thumbnail.length != 0) {
      return Image.network(this.thumbnail['path'] + "/portrait_uncanny.jpg",
          fit: BoxFit.fill);
    }
  }
}
