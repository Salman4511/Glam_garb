import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Shared/constants/constants.dart';
import 'package:glam_garb/application/checkOut/check_out_bloc.dart';
import 'package:glam_garb/domain/response_models/check_out_model/check_out_model/check_out_model.dart';
import 'package:glam_garb/infrastructure/service/checkOut/check_out_repo.dart';
import 'package:glam_garb/presentation/screens/cart/check_out/check_out_screens/payment_screen.dart';
import 'package:glam_garb/presentation/screens/cart/check_out/check_out_screens/widgets/top_level_widget.dart';

class OrderSummaryScreen extends StatefulWidget {
  final String selectedAddressId;
  final String name;
  final String houseName;
  final String area;
  final String city;
  final String state;
  final int pincode;
  final int phone;
  final int catDiscount;
  const OrderSummaryScreen(
      {super.key,
      required this.selectedAddressId,
      required this.name,
      required this.houseName,
      required this.area,
      required this.city,
      required this.state,
      required this.pincode,
      required this.phone,
      required this.catDiscount});

  @override
  State<OrderSummaryScreen> createState() => _OrderSummaryScreenState();
}

class _OrderSummaryScreenState extends State<OrderSummaryScreen> {
  dynamic total;
  dynamic catDiscount;
  @override
  Widget build(BuildContext context) {
    CheckOutRepo repo = CheckOutRepo();
    var baseUrl = 'http://10.0.2.2:3000/admin/assets/imgs/products/';
    return Scaffold(
      backgroundColor: kblackcolor,
      body: ListView(
        children: [
          kheight,
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: kwhite,
                  )),
              Text(
                'Order Summary',
                style: textstyle3,
              ),
            ],
          ),
          kheight,
          TopLevelWidget(
            radius1: 13,
            textStyle1: textstyle4,
            textStyle2: textstyle3,
            textStyle3: textstyle4,
            radius2: 15,
            radius3: 13,
            color2: Colors.blue,
            color1: kwhite,
            color3: kwhite,
          ),
          Column(
            children: [
              kheight50,
              Row(
                children: [
                  kwidth,
                  Text('Deliver To:', style: textstyle3),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  kheight,
                  Row(
                    children: [
                      kwidth,
                      Text(
                        widget.name,
                        style: textstyle4,
                      ),
                    ],
                  ),
                  kheight,
                  Text(
                    '${widget.houseName}, ${widget.area}, ${widget.city}',
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 50,
                      ),
                      Text('${widget.state} ${widget.pincode}'),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 50,
                      ),
                      Text('Mobile: ${widget.phone}'),
                    ],
                  ),
                  kheight
                ],
              ),
            ),
          ),
          Column(
            children: [
              kheight50,
              Row(
                children: [
                  kwidth,
                  Text('Your Orders:', style: textstyle3),
                ],
              ),
            ],
          ),
          Stack(
            children: [
              SizedBox(
                height: 400,
                child: FutureBuilder<CheckOutModel>(
                  future: repo.checkOut(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else if (!snapshot.hasData ||
                        snapshot.data?.productsInCart == null) {
                      return Center(
                        child: Text(
                          'No items found.',
                          style: textstyleWhite,
                        ),
                      );
                    } else {
                      final checkOut = snapshot.data!;
                      total = checkOut.total;
                      catDiscount = checkOut.catDiscount;
                      return ListView.builder(
                          itemCount: checkOut.productsInCart!.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {});
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(baseUrl +
                                                    checkOut
                                                        .productsInCart![index]
                                                        .images![0]
                                                        .url!))),
                                      ),
                                      kwidth,
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          kheight,
                                          Text(
                                            checkOut.productsInCart![index]
                                                    .productName ??
                                                '',
                                            style: textstyle4,
                                          ),
                                          Text(
                                            '${checkOut.productsInCart![index].description}, ',
                                          ),
                                          Text(
                                              '${checkOut.productsInCart![index].brand} ${checkOut.productsInCart![index].category}'),
                                          Text(
                                            '₹${checkOut.productsInCart![index].salePrice}',
                                            style: textstyle4,
                                          ),
                                          kheight
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    }
                  },
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 330,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    color: Colors.amberAccent,
                    child: Row(
                      children: [
                        BlocBuilder<CheckOutBloc, CheckOutState>(
                          builder: (context, state) {
                            return FutureBuilder<CheckOutModel>(
                              future: repo.checkOut(),
                              builder: (context, snapshot) {
                                return Text(
                                    '    Total:₹${snapshot.data?.total}',
                                    style: textstyle1);
                              },
                            );
                          },
                        ),
                        const Spacer(),
                        ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.redAccent),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PaymentScreen(
                                    total: total,
                                    catDiscount: catDiscount,
                                  ),
                                ));
                          },
                          child: Text(
                            'Continue',
                            style: textstyle3,
                          ),
                        ),
                        kwidth
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
