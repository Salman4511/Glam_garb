import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Application/wishlist/wishlist_bloc.dart';
import 'package:glam_garb/application/profile/profile_bloc.dart';
import 'package:glam_garb/domain/response_models/profile_model/my_order_model/my_order_model.dart';
import 'package:glam_garb/infrastructure/service/profile/profile_repo.dart';
import 'package:glam_garb/presentation/screens/profile/my_orders/widgets/order_details.dart';
import 'package:glam_garb/presentation/screens/profile/my_orders/widgets/product_card_widget.dart';
import 'package:glam_garb/Shared/constants/constants.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  @override
  Widget build(BuildContext context) {
    ProfileRepo repo = ProfileRepo();
    return Scaffold(
      // backgroundColor: kblackcolor,
      appBar: AppBar(
        backgroundColor: kwhite,
        title: Text('My Orders', style: textstyleTitle),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios,)),
      ),
      body: Stack(
        children: [
          BlocConsumer<ProfileBloc, ProfileState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return FutureBuilder<MyOrderModel>(
                future: repo.getOrders(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (!snapshot.hasData || snapshot.data?.orders == []) {
                    return const Center(
                      child: Text(
                        'No Items found.',
                        style: TextStyle(color: kwhite),
                      ),
                    );
                  } else {
                    final orders = snapshot.data!.orders;

                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          kheight20,
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: orders!.length,
                            reverse: true,
                            itemBuilder: (context, orderIndex) {
                              final order = orders[orderIndex];
                              return Column(
                                children: order.items!.map((item) {
                                  return GestureDetector(
                                    onTap: () {
                                     Navigator.push(context, CupertinoPageRoute(builder: (context) =>
                                      OrderDetailsScreen(
                                        mobile: order.address!.mobile??0, 
                                        area: order.address!.area??'', 
                                        city: order.address!.city??'', 
                                        pinCode: order.address!.pincode??0, 
                                        houseName:order.address!.housename??"", 
                                        status: order.status??'', 
                                        total: item.productDetails!
                                                      .salePrice ??
                                                  0, 
                                        paymentType: order.paymentMethod??"", 
                                        name: order.address!.name??'', 
                                        state: order.address!.state??"", 
                                        id: order.id??'', 
                                        returnStatus: order.returnStatus??'', 
                                        returnReason: order.returnReason??"", 
                                        imgUrl: item.productDetails!.images!.first.url??'', 
                                        productId: item.productDetails!.id??"", 
                                        quantity: item.quantity??0, 
                                        size: item.size??'', 
                                        productName: item.productDetails!.productName??'', 
                                        productDescription: item.productDetails!.description??'', 
                                         
                                        ),));
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 8,
                                      ),
                                      child: OrderProductCard(
                                        imageUrl: item.productDetails!
                                                .images![0].url ??
                                            '',
                                        productName:
                                            item.productDetails!.productName ??
                                                '',
                                        productDescription:
                                            item.productDetails!.description ??
                                                '',
                                        status: order.status ?? '',
                                        onBuy: () {
                                          // Your onBuy functionality...
                                        },
                                        price:
                                            item.productDetails!.salePrice ?? 0,
                                        id: snapshot
                                                .data?.orders![orderIndex].id ??
                                            '',
                                        productId:
                                            item.productDetails!.id ?? '',
                                             returnRequest:snapshot.data?.orders![orderIndex].returnStatus??'',
                                      ),
                                    ),
                                  );
                                }).toList(),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }
}
