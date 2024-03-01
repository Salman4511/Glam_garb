import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Application/category/category_bloc.dart';
import 'package:glam_garb/Domain/response_models/category_model/category_model.dart';
import 'package:glam_garb/Infrastructure/service/category/category_repo.dart';
import 'package:glam_garb/Infrastructure/service/wishlist/wishlist_repo.dart';
import 'package:glam_garb/Presentation/screens/category/widgets/category_product_card_widget.dart';
import 'package:glam_garb/Presentation/screens/category/widgets/choice_chip_widget.dart';
import 'package:glam_garb/Presentation/screens/category/widgets/filter_dialog_widget.dart';
import 'package:glam_garb/Presentation/screens/category/widgets/filter_options.dart';
import 'package:glam_garb/Presentation/screens/product/product_details_page.dart';
import 'package:glam_garb/Shared/constants/constants.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({
    super.key,
  });

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  String selectedCategory = 'all'; // Default selected category
  CategoryRepo repo = CategoryRepo();
  WishListRepo wishRepo = WishListRepo();
  TextEditingController searchController = TextEditingController();
  FilterOptions filterOptions = FilterOptions();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return Scaffold(
          // backgroundColor: kblackcolor,
          body: Column(
            children: [
              
              kheight50,
              Row(
                children: [
                  kwidth,
                  Text(
                    '  Categories',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              BlocBuilder<CategoryBloc, CategoryState>(
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CupertinoSearchTextField(
                      controller: searchController,
                      // backgroundColor: Colors.white,
                      placeholder: "Search Product, Brand, Category",
                      onChanged: (value) {
                        context.read<CategoryBloc>().add(
                            CategoryEvent.getAllCategory(
                                value,
                                filterOptions.selectedColors,
                                filterOptions.selectedSizes,
                                filterOptions.selectedCategories,
                                filterOptions.selectedBrands));
                      },
                    ),
                  );
                },
              ),
              kheight,
              // Choice Chips with padding
               
              Wrap(
                spacing: 12.0,
                children: [
                  BuildChoiceChip(
                    label: 'All',
                    category: 'all',
                    selectedCategory: selectedCategory,
                    onSelect: () {
                      updateSelectedCategory('all');
                    },
                  ),
                  BuildChoiceChip(
                    label: 'Men',
                    category: 'men',
                    selectedCategory: selectedCategory,
                    onSelect: () {
                      updateSelectedCategory('men');
                    },
                  ),
                  BuildChoiceChip(
                    label: 'Women',
                    category: 'women',
                    selectedCategory: selectedCategory,
                    onSelect: () {
                      updateSelectedCategory('women');
                    },
                  ),
                  kwidth,
                  kwidth,
                  kwidth,
                  CircleAvatar(
                    backgroundColor: baseColor,
                    radius: 23,
                    child: IconButton(
                      onPressed: () => _showFilterDialog(filterOptions),
                      icon: const Icon(
                        Icons.filter_list,
                        color: kblackcolor,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: buildProductList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildProductList() {
    Future<CategoryModel>? future;
    if (selectedCategory == 'all') {
      future = repo.getAllProducts(
          searchController.text,
          filterOptions.selectedColors,
          filterOptions.selectedSizes,
          filterOptions.selectedCategories,
          filterOptions.selectedBrands);
    } else if (selectedCategory == 'men') {
      future = repo.getMensProducts(
          searchController.text,
          filterOptions.selectedColors,
          filterOptions.selectedSizes,
          filterOptions.selectedCategories,
          filterOptions.selectedBrands);
    } else if (selectedCategory == 'women') {
      future = repo.getWomensProducts(
          searchController.text,
          filterOptions.selectedColors,
          filterOptions.selectedSizes,
          filterOptions.selectedCategories,
          filterOptions.selectedBrands);
    }

    return Column(
      children: [
        kheight,
        selectedCategory == 'all'?Row(
          children: [
            Text('   All Products',
            style: textstyle1,
            ),
          ],
        ):selectedCategory == 'men'?
        Row(
          children: [
            Text('   Mens Products',
                        style: textstyle1,
            ),
          ],
        ):Row(
          children: [
            Text("   Womens Products",
                        style: textstyle1,
            ),
          ],
        ),
        FutureBuilder<CategoryModel>(
          future: future,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (!snapshot.hasData || snapshot.data?.products == null) {
              return const Text('No products found.');
            } else {
              final products = snapshot.data!;
              return Column(
                children: [
                  // kheight,
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                    ),
                    itemCount: products.products!.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetails(
                              title: products.products![index].productName ?? '',
                              descr: products.products![index].description ?? '',
                              price: products.products![index].salePrice ?? 0,
                              imgurl: products.products![index].images ?? [],
                              id: products.products![index].id ?? '',
                              sizes: products.products![index].sizes ?? [],
                              colors: products.products![index].color ?? [],
                            ),
                          ),
                        );
                      },
                      child: ProductCardWidget(
                        width: 180,
                        // Pass necessary data to ProductCard widget
                        id: products.products![index].id ?? '',
                        imgurl: products.products![index].images![0].url ?? '',
                        salePrice: products.products![index].salePrice!,
                        productName: products.products![index].productName ?? '',
                        productId: '',
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ],
    );
  }

  void updateSelectedCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  void _showFilterDialog(FilterOptions filterOptions) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) => FutureBuilder<CategoryModel>(
        future: repo.getAllProducts(
            searchController.text,
            filterOptions.selectedColors,
            filterOptions.selectedSizes,
            filterOptions.selectedCategories,
            filterOptions.selectedBrands),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return AlertDialog(
              title: const Text('Error'),
              content: const Text(
                  'Failed to load filter options. Please try again.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          } else {
            final products = snapshot.data!;
            final brandNames =
                products.brand!.map((brand) => brand.brandName).toList();
            final categoryNames = products.category!
                .map((category) => category.categoryName)
                .toList();
            return FilterDialog(
              colorOptions: products.color!,
              sizeOptions: products.size!,
              brandOptions: brandNames,
              categoryOptions: categoryNames,
              filterOptions: filterOptions,
              searchText: searchController.text,
              selectedCategory: selectedCategory,
            );
          }
        },
      ),
    );
  }
}
