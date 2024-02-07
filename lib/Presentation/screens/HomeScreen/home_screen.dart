import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glam_garb/Domain/response_models/category_model/category_model.dart';
import 'package:glam_garb/Infrastructure/service/auth/auth_repo.dart';
import 'package:glam_garb/Infrastructure/service/category/category_repo.dart';
import 'package:glam_garb/Presentation/screens/HomeScreen/widgets/main_card.dart';
import 'package:glam_garb/Presentation/screens/category/widgets/category_product_card_widget.dart';
import 'package:glam_garb/Presentation/screens/product/product_details_page.dart';
import 'package:glam_garb/Presentation/widget/menu_widget.dart';
import 'package:glam_garb/Presentation/widget/main_app_bar.dart';
import 'package:glam_garb/Shared/constants/constants.dart';

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
  @override
  Widget build(BuildContext context) {
    CategoryRepo repo = CategoryRepo();
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: ListView(children: [
        const Main_app_bar(),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: CupertinoSearchTextField(
            backgroundColor: Colors.white,
            placeholder: "Search Product",
          ),
        ),
        Stack(children: [
          Column(
            children: [
              SizedBox(
                height: 300,
                child: ListView.builder(
                  itemBuilder: (context, index) => const MainCard(
                    width: 380,
                  ),
                  scrollDirection: Axis.horizontal,
                ),
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
      future: repo.getAllProducts('', [], [],[],[]),
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
              kheight,
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
                          price: products.products![index].salePrice!,
                          imgurl: products.products![index].images ?? [],
                          id: products.products![index].id ?? '',
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
    )
            ],
          ),
        ]),
      ])),
      drawer: const CustomDrawer(),
    );
  }
}
