part of "search_api_bloc.dart";

@immutable
abstract class SearchApiState {
  const SearchApiState();
}

class SearchApiInitialState extends SearchApiState {
  const SearchApiInitialState();
}

class SearchApiLoadingState extends SearchApiState {
  const SearchApiLoadingState();
}

class SearchApiResolvedState extends SearchApiState {

  final List<Category> categories;

  const SearchApiResolvedState(this.categories);
}
