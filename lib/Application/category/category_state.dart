part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    required bool isloading,
    CategoryModel? getcategory,
  }) = _CategoryState;

  factory CategoryState.inital() {
    return const CategoryState(
      isloading: false,
    );
  }
}
