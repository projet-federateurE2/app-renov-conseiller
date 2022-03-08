import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git/api/api_repository.dart';
import 'package:flutter/material.dart';
import 'package:git/model/category.dart';

part 'search_api_state.dart';
part 'search_api_event.dart';

class SearchApiBloc extends Bloc<SearchApiEvent, SearchApiState> {

  /// if we are in initial state we get all categories from te api
  /// then we emit a resolved state with the categories
  SearchApiBloc() : super(const SearchApiInitialState()) {
    on<SearchDoQueryEvent>((event, emit) async {
      emit(const SearchApiLoadingState());
      var categories = await ApiRepository().doCategoryQuery();
      emit(SearchApiResolvedState(categories));
    });
  }
}
