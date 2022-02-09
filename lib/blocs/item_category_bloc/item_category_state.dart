part of 'item_category_bloc.dart';

abstract class ItemCategoryState extends Equatable {
  const ItemCategoryState();
}

class ItemCategoryUnselected extends ItemCategoryState {
  @override
  List<Object> get props => [];
}

//------------------------------------------------------------------------------
class ItemCategorySelected extends ItemCategoryState {
  @override
  List<Object> get props => [];
}
