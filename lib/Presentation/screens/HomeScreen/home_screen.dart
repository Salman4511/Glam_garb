import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glam_garb/Presentation/screens/HomeScreen/widgets/main_card.dart';
import 'package:glam_garb/Presentation/screens/HomeScreen/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(children: [
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: CupertinoSearchTextField(
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20,
                    crossAxisCount: 2),
                    itemCount: 20,
                itemBuilder: (context, index) => ProductCard(width: 200),
                
              )

              // ListView.builder(
              //   itemBuilder: (context, index) => ProductCard(width: 200),
              //   scrollDirection: Axis.horizontal,
              // ),
              ,
              const SizedBox(
                height: 10,
              ),
              // const Row(
              //   children: [
              //     Text(
              //       '  TRENDING',
              //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              //     ),
              //   ],
              // ),
              //  const SizedBox(
              //   height: 10,
              // ),
              //      SizedBox(
              //     height: 250,
              //     child: ListView.builder(
              //       itemBuilder: (context, index) => ProductCard(width: 200),
              //       scrollDirection: Axis.horizontal,
              //     ))
            ],
          ),
        ]),
      ])),
    );
  }
}
