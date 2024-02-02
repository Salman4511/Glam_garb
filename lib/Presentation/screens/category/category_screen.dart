import 'package:flutter/material.dart';
import 'package:glam_garb/Domain/response_models/category_model/category_model.dart';
import 'package:glam_garb/Infrastructure/service/category/category_repo.dart';
import 'package:glam_garb/Presentation/screens/category/widgets/category_product_card_widget.dart';
import 'package:glam_garb/Presentation/screens/category/widgets/choice_chip_widget.dart';
import 'package:glam_garb/Presentation/screens/product/product_details_page.dart';
import 'package:glam_garb/Shared/constants/constants.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  String selectedCategory = 'all'; // Default selected category
  CategoryRepo repo = CategoryRepo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblackcolor,
      appBar: AppBar(
        title: const Text('Categories'),
        backgroundColor: kblackcolor,
      ),
      body: Column(
        children: [
          // Choice Chips with padding
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Wrap(
              spacing: 8.0,
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
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // FutureBuilder for products
                  if (selectedCategory == 'all')
                    FutureBuilder<CategoryModel>(
                      future: repo.getAllProducts(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else if (!snapshot.hasData ||
                            snapshot.data?.products == null) {
                          return Text('No products found.');
                        } else {
                          final products = snapshot.data!;
                          return Column(
                            children: [
                              kheight,
                              GridView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 20,
                                  crossAxisCount: 2,
                                ),
                                itemCount: products.products!.length,
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ProductDetails(
                                            title: products.products![index]
                                                    .productName ??
                                                '',
                                            descr: products.products![index]
                                                    .description ??
                                                '',
                                            price: products
                                                .products![index].salePrice!,
                                            imgurl: products
                                                    .products![index].images ??
                                                [],
                                            id: products.products![index].id ??
                                                '',
                                          ),
                                        ));
                                    // Handle product item tap
                                  },
                                  child: ProductCardWidget(
                                    width: 180,
                                    // Pass necessary data to ProductCard widget
                                    id: products.products![index].id ?? '',
                                    imgurl: products
                                            .products![index].images![0].url ??
                                        '',
                                    salePrice:
                                        products.products![index].salePrice!,
                                    productName:
                                        products.products![index].productName ??
                                            '',
                                  ),
                                ),
                              ),
                            ],
                          );
                        }
                      },
                    ),
                  if (selectedCategory == 'men')
                    FutureBuilder<CategoryModel>(
                      future: repo.getMensProducts(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else if (!snapshot.hasData ||
                            snapshot.data?.products == null) {
                          return Text('No products found.');
                        } else {
                          final products = snapshot.data!;
                          return Column(
                            children: [
                              kheight,
                              GridView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 20,
                                  crossAxisCount: 2,
                                ),
                                itemCount: products.products!.length,
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                  onTap: () {
                                    // Handle product item tap
                                  },
                                  child: ProductCardWidget(
                                    width: 180,
                                    // Pass necessary data to ProductCard widget
                                    id: products.products![index].id ?? '',
                                    imgurl: products
                                            .products![index].images![0].url ??
                                        '',
                                    salePrice:
                                        products.products![index].salePrice!,
                                    productName:
                                        products.products![index].productName ??
                                            '',
                                  ),
                                ),
                              ),
                            ],
                          );
                        }
                      },
                    ),
                  if (selectedCategory == 'women')
                    FutureBuilder<CategoryModel>(
                      future: repo.getWomensProducts(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else if (!snapshot.hasData ||
                            snapshot.data?.products == null) {
                          return Text('No products found.');
                        } else {
                          final products = snapshot.data!;
                          return Column(
                            children: [
                              kheight,
                              GridView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 20,
                                  crossAxisCount: 2,
                                ),
                                itemCount: products.products!.length,
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                  onTap: () {
                                    // Handle product item tap
                                  },
                                  child: ProductCardWidget(
                                    width: 180,
                                    // Pass necessary data to ProductCard widget
                                    id: products.products![index].id ?? '',
                                    imgurl: products
                                            .products![index].images![0].url ??
                                        '',
                                    salePrice:
                                        products.products![index].salePrice!,
                                    productName:
                                        products.products![index].productName ??
                                            '',
                                  ),
                                ),
                              ),
                            ],
                          );
                        }
                      },
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void updateSelectedCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }
}
