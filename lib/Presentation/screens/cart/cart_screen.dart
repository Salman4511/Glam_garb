import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Application/cart/cart_bloc.dart';
import 'package:glam_garb/Domain/response_models/cart_model/cart_get_model/cart_get_model.dart';
import 'package:glam_garb/Infrastructure/service/cart/cart_repo.dart';
import 'package:glam_garb/Presentation/screens/cart/widgets/cart_item_widget.dart';
import 'package:glam_garb/Presentation/screens/product/product_details_page.dart';
import 'package:glam_garb/Shared/constants/constants.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool visible = false;
  bool visible2 = true;
  @override
  Widget build(BuildContext context) {
    CartRepo repo = CartRepo();

    return Scaffold(
      backgroundColor: kblackcolor,
      appBar: AppBar(
        title: const Column(
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
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: kwhite,
            )),
        backgroundColor: kblackcolor,
      ),
      body: Stack(children: [
        BlocConsumer<CartBloc, CartState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return FutureBuilder<CartGetModel>(
              future: repo.getCart(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData ||
                    snapshot.data?.productsInCart == []) {
                  return Center(
                      child: Text(
                    'No items found.',
                    style: textstyleWhite,
                  ));
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
                                Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetails(
                          title: cart.productsInCart![index].productName ?? '',
                          descr: cart.productsInCart![index].description ?? '',
                          price: cart.productsInCart![index].salePrice!,
                          imgurl: cart.productsInCart![index].images ?? [],
                          id: cart.productsInCart![index].id ?? '',
                        ),
                      ),
                    );
                  
                              },
                              child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 8,
                                  ),
                                  child: CartItemCard(
                                    imageUrl: cart.productsInCart![index]
                                            .images![0].url ??
                                        '',
                                    itemName: cart.productsInCart![index]
                                            .productName ??
                                        '',
                                    itemCount:
                                        cart.userData!.cart![index].quantity ??
                                            0,
                                    onIncrement: () {},
                                    onDecrement: () {},
                                    onDelete: () {},
                                    price: cart.productsInCart![index].salePrice
                                        .toString(),
                                    id: cart.userData!.cart![index].id ?? '',
                                    size:
                                        cart.userData!.cart![index].size ?? '',
                                  ))),
                        ),
                      ],
                    ),
                  );
                }
              },
            );
          },
        ),
        BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            return FutureBuilder<CartGetModel>(
              future: repo.getCart(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData ||
                    snapshot.data?.productsInCart == []) {
                  return Center(
                      child: Text(
                    'No items found.',
                    style: textstyleWhite,
                  ));
                } else {
                  final cart = snapshot.data!;

                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Visibility(
                      visible: visible,
                      child: Container(
                        height: 255,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 7,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    visible = !visible;
                                    visible2 = !visible2;
                                  });
                                },
                                child: Container(
                                  height: 13,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: kblackcolor,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                              kheight20,
                              Row(
                                children: [
                                  Text(
                                    'Quantity',
                                    style: textstyle1,
                                  ),
                                  const Spacer(),
                                  Text(
                                    cart.quantity.toString(),
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
                                  const Spacer(),
                                  Text(
                                    '0%',
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
                                    'Free',
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
                                    cart.total.toString(),
                                    style: textstyle4,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }
              },
            );
          },
        ),
        BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            return FutureBuilder<CartGetModel>(
              future: repo.getCart(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData ||
                    snapshot.data?.productsInCart == []) {
                  return Center(
                      child: Text(
                    'No items found.',
                    style: textstyleWhite,
                  ));
                } else {
                  final cart = snapshot.data!;

                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Visibility(
                      visible: visible2,
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 7,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  visible = !visible;
                                  visible2 = !visible2;
                                });
                              },
                              child: Container(
                                height: 13,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: kblackcolor,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                children: [
                                  kheight50,
                                  Text(
                                    'Total Amount',
                                    style: textstyle1,
                                  ),
                                  const Spacer(),
                                  Text(
                                    cart.total.toString(),
                                    style: textstyle4,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              },
            );
          },
        ),
        Positioned(
          top: 580,
          left: 85,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                child: Text(
                  'Proceed to CheckOut',
                  style: textstyle3,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
