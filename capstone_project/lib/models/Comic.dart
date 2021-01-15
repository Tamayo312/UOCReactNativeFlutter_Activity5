class Comic {
  final int id;
  final int digitalId;
  final String title;
  final int issueNumber;
  final String variantDescription;
  final String description;
  final String modified;
  final String isbn;
  final String upc;
  final String diamondCode;
  final String ean;
  final String issn;
  final String format;
  final int pageCount;
  final List textObjects;
  final String resourceURI;
  final List urls;
  final Map series;
  final List variants;
  final List collections;
  final List collectedIssues;
  final List dates;
  final List prices;
  final Map thumbnail;
  final List images;
  final Map creators;
  final Map characters;
  final Map stories;
  final Map events;

  Comic(
      {this.id,
      this.digitalId,
      this.title,
      this.issueNumber,
      this.variantDescription,
      this.description,
      this.modified,
      this.isbn,
      this.upc,
      this.diamondCode,
      this.ean,
      this.issn,
      this.format,
      this.pageCount,
      this.textObjects,
      this.resourceURI,
      this.urls,
      this.series,
      this.variants,
      this.collections,
      this.collectedIssues,
      this.dates,
      this.prices,
      this.thumbnail,
      this.images,
      this.creators,
      this.characters,
      this.stories,
      this.events});

  factory Comic.fromJson(Map<String, dynamic> json) {
    return new Comic(
        id: json['id'] as int,
        digitalId: json['digitalId'] as int,
        title: json['title'] as String,
        issueNumber: json['issueNumber'] as int,
        variantDescription: json['variantDescription'] as String,
        description: json['description'] as String,
        modified: json['modified'] as String,
        isbn: json['isbn'] as String,
        upc: json['upc'] as String,
        diamondCode: json['diamondCode'] as String,
        ean: json['ean'] as String,
        issn: json['issn'] as String,
        format: json['format'] as String,
        pageCount: json['pageCount'] as int,
        textObjects: json['textObjects'] as List,
        resourceURI: json['resourceURI'] as String,
        urls: json['urls'] as List,
        series: json['series'] as Map,
        variants: json['variants'] as List,
        collections: json['collections'] as List,
        collectedIssues: json['collectedIssues'] as List,
        dates: json['dates'] as List,
        prices: json['prices'] as List,
        thumbnail: json['thumbnail'] as Map,
        images: json['images'] as List,
        creators: json['creators'] as Map,
        characters: json['characters'] as Map,
        stories: json['stories'] as Map,
        events: json['events'] as Map);
  }
}
