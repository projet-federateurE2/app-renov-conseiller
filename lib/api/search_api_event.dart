part of "search_api_bloc.dart";

@immutable
abstract class SearchApiEvent {
  const SearchApiEvent();
}

class SearchDoQueryEvent extends SearchApiEvent {
  const SearchDoQueryEvent();
}

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
