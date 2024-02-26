import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Application/category/category_bloc.dart';
import 'package:glam_garb/Domain/response_models/category_model/category_model.dart';
import 'package:glam_garb/Infrastructure/service/auth/auth_repo.dart';
import 'package:glam_garb/Infrastructure/service/category/category_repo.dart';
import 'package:glam_garb/Presentation/screens/category/widgets/category_product_card_widget.dart';
import 'package:glam_garb/Presentation/screens/category/widgets/filter_options.dart';
import 'package:glam_garb/Presentation/screens/product/product_details_page.dart';
import 'package:glam_garb/Presentation/widget/menu_widget.dart';
import 'package:glam_garb/Presentation/widget/main_app_bar.dart';
import 'package:glam_garb/Shared/constants/constants.dart';
import 'package:glam_garb/infrastructure/service/banner/banner_repo.dart';
import 'package:glam_garb/presentation/screens/HomeScreen/widgets/main_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final AuthRepo repo = AuthRepo();
  DrawerController drawerController =
      DrawerController(child: MenuWidget(), alignment: DrawerAlignment.end);
  TextEditingController searchController = TextEditingController();
  FilterOptions filterOptions = FilterOptions();
  @override
  Widget build(BuildContext context) {
    var baseUrl = 'http://10.0.2.2:3000/admin/assets/imgs/products/';
    CategoryRepo repo = CategoryRepo();
    BannerRepo bannerRepo = BannerRepo();
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
              child: ListView(children: [
            const Main_app_bar(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: BlocBuilder<CategoryBloc, CategoryState>(
                builder: (context, state) {
                  return CupertinoSearchTextField(
                    controller: searchController,
                    backgroundColor: Colors.white,
                    placeholder: "Search Product",
                    onChanged: (value) {
                      context.read<CategoryBloc>().add(
                          CategoryEvent.getAllCategory(
                              value,
                              filterOptions.selectedColors,
                              filterOptions.selectedSizes,
                              filterOptions.selectedCategories,
                              filterOptions.selectedBrands));
                    },
                  );
                },
              ),
            ),
            FutureBuilder<CategoryModel>(
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
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData ||
                    snapshot.data?.products == null) {
                  return const Text('No products found.');
                } else {
                  final products = snapshot.data!;
                  return SizedBox(
                    height: 80,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: products.products!.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetails(
                                title:
                                    products.products![index].productName ?? '',
                                descr:
                                    products.products![index].description ?? '',
                                price: products.products![index].salePrice!,
                                imgurl: products.products![index].images ?? [],
                                id: products.products![index].id ?? '',
                                sizes: products.products![index].sizes ?? [],
                                colors: products.products![index].color ?? [],
                              ),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: NetworkImage(baseUrl +
                                  products.products![index].images![0].url!),
                            ),
                            const SizedBox(
                              width: 80,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
            Stack(children: [
              Column(
                children: [
                  SizedBox(
                    height: 300,
                    child: FutureBuilder(
                        future: bannerRepo.getBanner(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                                child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (!snapshot.hasData ||
                              snapshot.data?.banner == null) {
                            return const Text('No products found.');
                          } else {
                            final banner = snapshot.data!.banner;
                            return ListView.builder(
                              itemCount: banner!.length,
                              itemBuilder: (context, index) => MainCard(
                                  width: 380,
                                  imageUrl: banner[index].image ?? ''),
                              scrollDirection: Axis.horizontal,
                            );
                          }
                        }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Text(
                        '  NEW ARRIVALS',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FutureBuilder<CategoryModel>(
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
                        return Text('Error: ${snapshot.error}');
                      } else if (!snapshot.hasData ||
                          snapshot.data?.products == null) {
                        return const Text('No products found.');
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
                              itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProductDetails(
                                        title: products
                                                .products![index].productName ??
                                            '',
                                        descr: products
                                                .products![index].description ??
                                            '',
                                        price: products
                                            .products![index].salePrice!,
                                        imgurl:
                                            products.products![index].images ??
                                                [],
                                        id: products.products![index].id ?? '',
                                        sizes:
                                            products.products![index].sizes ??
                                                [],
                                        colors:
                                            products.products![index].color ??
                                                [],
                                      ),
                                    ),
                                  );
                                },
                                child: ProductCardWidget(
                                  width: 180,
                                  id: products.products![index].id ?? '',
                                  imgurl: products
                                          .products![index].images![0].url ??
                                      '',
                                  salePrice:
                                      products.products![index].salePrice!,
                                  productName:
                                      products.products![index].productName ??
                                          '',
                                  productId: '',
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                    },
                  )
                ],
              ),
            ]),
          ])),
          drawer: const CustomDrawer(),
        );
      },
    );
  }
}
