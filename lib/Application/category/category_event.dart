part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  factory CategoryEvent.getAllCategory(String search, dynamic colors,
      dynamic sizes, dynamic categories, dynamic brands) = _GetAllCategory;

  factory CategoryEvent.getMenCategory(String search, dynamic colors,
      dynamic sizes, dynamic categories, dynamic brands) = _GetMenCategory;

  factory CategoryEvent.getWomenCategory(String search, dynamic colors,
      dynamic sizes, dynamic categories, dynamic brands) = _GetWomenCategory;
}
