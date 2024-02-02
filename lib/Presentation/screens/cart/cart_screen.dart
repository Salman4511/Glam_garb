import 'package:flutter/material.dart';
import 'package:glam_garb/Domain/response_models/cart_model/cart_get_model/cart_get_model.dart';
import 'package:glam_garb/Infrastructure/service/cart/cart_repo.dart';
import 'package:glam_garb/Presentation/screens/cart/widgets/cart_item_widget.dart';
import 'package:glam_garb/Shared/constants/constants.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    CartRepo repo=CartRepo();
    return Scaffold(
      backgroundColor: kblackcolor,
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'Your',
              style: TextStyle(color: kwhite),
            ),
            Text(
              'Cart Items',
              style: TextStyle(color: kwhite, fontWeight: FontWeight.w800),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: kwhite,
              ))
        ],
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: kwhite,
            )),
        backgroundColor: kblackcolor,
      ),
      body: Stack(children: [
        FutureBuilder<CartGetModel>(
          future: repo.getCart(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (!snapshot.hasData ||
                snapshot.data?.productsInCart == null) {
              return const Text('No items found.');
            } else {
              final cart = snapshot.data!;

              return SingleChildScrollView(
                child: Column(
                  children: [
                    kheight20,
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: cart.productsInCart!.length,
                      itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            // Navigate or do something with the selected category
                          },
                          child:

                              Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 8,
                                  ),
                                  child:CartItemCard(
                                    imageUrl: cart.productsInCart![index].images![0].url??'',
                                     itemName: cart.productsInCart![index].productName??'',
                                      itemCount:cart.userData!.cart![index].quantity??0 , 
                                      onIncrement: (){}, 
                                      onDecrement: (){}, 
                                      onDelete: (){},
                                       price:cart.productsInCart![index].salePrice.toString(),
                                        id: cart.userData!.cart![index].id??'',
                                         size: cart.userData!.cart![index].size ?? ''  ,
                                      )
                                  )),
                    ),
                  ],
                ),
              );
            }
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 230,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  kheight20,
                  Row(
                    children: [
                      Text(
                        'Prize',
                        style: textstyle1,
                      ),
                      Spacer(),
                      Text(
                        '999',
                        style: textstyle4,
                      )
                    ],
                  ),
                  kheight,
                  Row(
                    children: [
                      Text(
                        'Discount',
                        style: textstyle1,
                      ),
                      Spacer(),
                      Text(
                        '999',
                        style: textstyle4,
                      )
                    ],
                  ),
                  kheight,
                  Row(
                    children: [
                      Text(
                        'Delivery Charges',
                        style: textstyle1,
                      ),
                      const Spacer(),
                      Text(
                        '999',
                        style: textstyle4,
                      )
                    ],
                  ),
                  const Divider(
                    color: kblackcolor,
                  ),
                  kheight,
                  Row(
                    children: [
                      Text(
                        'Total Amount',
                        style: textstyle1,
                      ),
                      const Spacer(),
                      Text(
                        '999',
                        style: textstyle4,
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.orange)),
                    child: Text(
                      'Proceed to CheckOut',
                      style: textstyle3,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
