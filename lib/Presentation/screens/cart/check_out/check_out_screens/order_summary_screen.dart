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
      // backgroundColor: kblackcolor,
      body: ListView(
        children: [
          kheight,
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    // color: kwhite,
                  )),
              Text(
                'Order Summary',
                style: textstyle1,
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
            color2: baseColor,
            color1: Colors.grey,
            color3: Colors.grey,
          ),
          Column(
            children: [
              kheight50,
              Row(
                children: [
                  kwidth,
                  Text('Deliver To:', style: textstyle1),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.grey,
              child: Column(
                children: [
                  kheight,
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        widget.name,
                        style: textstyle4,
                      ),
                    ],
                  ),
                  kheight,
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        '${widget.houseName}, ${widget.area}, ${widget.city}',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                     const SizedBox(
                        width: 20,
                      ),
                      Text('${widget.state} ${widget.pincode}'),
                    ],
                  ),
                  Row(
                    children: [
                     const SizedBox(
                        width: 20,
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
                  Text('Your Orders:', style: textstyle1),
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
                                  color: Colors.grey,
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
                                            style: const TextStyle(color: Colors.black,
                                             fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Courier')
                                              ,
                                          ),
                                          SizedBox(
                                            width: 250,
                                            child: Text(
                                              
                                              '${checkOut.productsInCart![index].description}, ',
                                              style:const TextStyle(
                                                
                                                fontFamily: 'Courier',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w800
                                              ) ,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Text(
                                              '${checkOut.productsInCart![index].brand} ${checkOut.productsInCart![index].category}',
                                              style: const TextStyle(
                                                
                                                fontFamily: 'Courier',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w800
                                              ) ,),
                                              Text(
                                            'Quanity:${checkOut.quantityy![index]}',
                                            style: const TextStyle(
                                                fontFamily: 'Courier',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Text(
                                            '₹${checkOut.productsInCart![index].salePrice}',
                                            style: const TextStyle(
                                                
                                                fontFamily: 'Courier',
                                                fontSize: 19,
                                                fontWeight: FontWeight.w800
                                              ) ,
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
                    height: 340,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    color: baseColor.shade300,
                    child: Row(
                      children: [
                        BlocBuilder<CheckOutBloc, CheckOutState>(
                          builder: (context, state) {
                            return FutureBuilder<CheckOutModel>(
                              future: repo.checkOut(),
                              builder: (context, snapshot) {
                                return Text(
                                    '    Total:₹${snapshot.data?.total}',
                                    style: textstyle3);
                              },
                            );
                          },
                        ),
                        const Spacer(),
                        ElevatedButton(
                          style:  ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(baseColor.shade700),
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
