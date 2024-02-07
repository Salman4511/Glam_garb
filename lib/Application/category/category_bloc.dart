import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glam_garb/Domain/response_models/category_model/category_model.dart';
import 'package:glam_garb/Infrastructure/service/category/category_repo.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepo repo;
  CategoryBloc(this.repo) : super(CategoryState.inital()) {
    on<_GetAllCategory>((event, emit) async {
      final getCat = await repo.getAllProducts(event.search,event.colors,event.sizes,event.categories,event.brands);
      emit(state.copyWith(getcategory: getCat, isloading: false));
    });

    on<_GetMenCategory>((event, emit) async {
      final getMenCat = await repo.getAllProducts(event.search, event.colors,
          event.sizes, event.categories, event.brands);
      emit(state.copyWith(getcategory: getMenCat, isloading: false));
    });

    on<_GetWomenCategory>((event, emit) async {
      final getWomenCat = await repo.getAllProducts(event.search, event.colors,
          event.sizes, event.categories, event.brands);
      emit(state.copyWith(getcategory: getWomenCat, isloading: false));
    });
  }

}
