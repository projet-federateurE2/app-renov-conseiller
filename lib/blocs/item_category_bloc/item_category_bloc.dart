import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'item_category_event.dart';
part 'item_category_state.dart';

class ItemCategoryBloc extends Bloc<ItemCategoryEvent, ItemCategoryState> {
  ItemCategoryBloc() : super(ItemCategoryUnselected());

  @override
  Stream<ItemCategoryState> mapEventToState(ItemCategoryEvent event) async* {
    if (event is SelectItemCategory) {
      yield ItemCategorySelected();
    }
  }

}
