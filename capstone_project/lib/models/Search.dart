// Filter by the issue format type (comic or collection).
enum FormatType { comic, collection }

// Return comics within a predefined date range.
enum DateDescriptor { lastWeek, nextWeek, thisWeek, thisMonth }

class Search {
  String title;
  List<FormatType> formatType;
  List<DateDescriptor> dateDescriptor;
  List<String> characters;
  List<String> sharedAppearances;
}
