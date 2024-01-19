import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glam_garb/Infrastructure/service/auth/auth_repo.dart';
import 'package:glam_garb/Presentation/screens/HomeScreen/widgets/main_card.dart';
import 'package:glam_garb/Presentation/screens/HomeScreen/widgets/product_card.dart';
import 'package:glam_garb/Presentation/screens/product/product_details_page.dart';
import 'package:glam_garb/Presentation/widget/menu_widget.dart';
import 'package:glam_garb/Presentation/widget/main_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final AuthRepo repo = AuthRepo();
  DrawerController drawerController =DrawerController(child: MenuWidget(), alignment:DrawerAlignment.end);
  @override
  Widget build(BuildContext context) {
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
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20, crossAxisCount: 2),
                itemCount: 20,
                itemBuilder: (context, index) => GestureDetector(
                  onTap:(){
                     Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const ProductDetails()),
                        );
                  } ,
                  child: const Expanded(child: ProductCard(width: 180)))
              )

           
            ],
          ),
        ]),
      ])),
     drawer: const CustomDrawer(),
    );
  }
}

