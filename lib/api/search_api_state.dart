part of "search_api_bloc.dart";

@immutable

/// we list our states
abstract class SearchApiState {
  const SearchApiState();
}

class SearchApiInitialState extends SearchApiState {
  const SearchApiInitialState();
}

class SearchApiLoadingState extends SearchApiState {
  const SearchApiLoadingState();
}

/// if we finish the api call we emit categories
class SearchApiResolvedState extends SearchApiState {

  final List<Category> categories;

  const SearchApiResolvedState(this.categories);
}
