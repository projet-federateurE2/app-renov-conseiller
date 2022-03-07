part of "search_api_bloc.dart";

@immutable

/// we list all the events
abstract class SearchApiEvent {
  const SearchApiEvent();
}

class SearchDoQueryEvent extends SearchApiEvent {
  const SearchDoQueryEvent();
}

/// if the api call is done
class SearchResolveQueryEvent extends SearchApiEvent {
  final List<Category> categories;

  const SearchResolveQueryEvent(this.categories);
}

class SearchJsonDoQueryEvent extends SearchApiEvent {
  const SearchJsonDoQueryEvent();
}

class SearchJsonResolveQueryEvent extends SearchApiEvent {
  final List<Category> categories;

  const SearchJsonResolveQueryEvent(this.categories);
}
