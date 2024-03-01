// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:glam_garb/Application/wishlist/wishlist_bloc.dart';
// import 'package:glam_garb/Domain/response_models/wishlist_model/wish_list_get_model/product.dart';
// import 'package:glam_garb/Domain/response_models/wishlist_model/wish_list_get_model/wish_list_get_model.dart';
// import 'package:glam_garb/infrastructure/service/wishlist/wishlist_repo.dart';
// import 'package:glam_garb/presentation/screens/product/product_details_page.dart';
// import 'package:glam_garb/presentation/screens/wishlist/widgets/wishlist_item_card_widget.dart';
// import 'package:glam_garb/Shared/constants/constants.dart';

// class WishList extends StatefulWidget {
//   const WishList({super.key});

//   @override
//   State<WishList> createState() => _WishListState();
// }

// class _WishListState extends State<WishList> {
//   @override
//   Widget build(BuildContext context) {
//     WishListRepo repo = WishListRepo();
//     return Scaffold(
//       backgroundColor: kblackcolor,
//       appBar: AppBar(
//         backgroundColor: kblackcolor,
//         title:  Text('Your wish list', style: textstyleTitle),
//         centerTitle: true,
//       ),
//       body: Stack(
//         children: [
//           BlocConsumer<WishlistBloc, WishlistState>(
//             listener: (context, state) {
//               // TODO: implement listener
//             },
//             builder: (context, state) {
//               return FutureBuilder<WishListGetModel>(
//                 future: repo.getWishList(),
//                 builder: (context, snapshot) {
//                   if (snapshot.connectionState == ConnectionState.waiting) {
//                     return const Center(child: CircularProgressIndicator());
//                   } else if (snapshot.hasError) {
//                     return Text('Error: ${snapshot.error}');
//                   } else if (!snapshot.hasData ||
//                       snapshot.data?.userData!.wishlist == null) {
//                     return const Text('No categories found.');
//                   } else {
//                     final wishlist = snapshot.data!;

//                     return SingleChildScrollView(
//                       child: Column(
//                         children: [
//                           kheight20,
//                           ListView.builder(
//                             shrinkWrap: true,
//                             physics: const NeverScrollableScrollPhysics(),
//                             itemCount: wishlist.userData!.wishlist!.length,
//                             itemBuilder: (context, index) {
//                               // Find the corresponding product in the products list
//                               var productId =
//                                   wishlist.userData!.wishlist![index].productId;
//                               var product = wishlist.products!.firstWhere(
//                                 (product) => product.id == productId,
//                                 orElse: () =>
//                                     Product(), // Replace Product() with your product model
//                               );

//                               return GestureDetector(
//                                 onTap: () {
//                                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => ProductDetails(
//                           title: product.productName ?? '',
//                           descr: product.description ?? '',
//                           price:product.salePrice??0,
//                           imgurl: product.images ?? [],
//                           id: product.id ?? '',
//                            sizes: product.sizes??[],
//                           colors: product.color??[],
//                         ),
//                       ),
//                     );
//                   },

//                                 child: Container(
//                                   margin: const EdgeInsets.symmetric(
//                                     horizontal: 8,
//                                     vertical: 8,
//                                   ),
//                                   child: WishListCard(
//                                     imageUrl: product.images![0].url ?? "",
//                                     productName: product.productName ?? "",
//                                     productDescription:
//                                         product.description ?? "",
//                                     active: product.active ?? false,
//                                     onBuy: () {},
//                                     price: product.salePrice ?? 0,
//                                     id: wishlist
//                                             .userData!.wishlist![index].id ??
//                                         "",
//                                     productId: product.id ?? '',
//                                   ),
//                                 ),
//                               );
//                             },
//                           ),
//                         ],
//                       ),
//                     );
//                   }
//                 },
//               );
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Application/wishlist/wishlist_bloc.dart';
import 'package:glam_garb/Domain/response_models/wishlist_model/wish_list_get_model/product.dart';
import 'package:glam_garb/Domain/response_models/wishlist_model/wish_list_get_model/wish_list_get_model.dart';
import 'package:glam_garb/infrastructure/service/wishlist/wishlist_repo.dart';
import 'package:glam_garb/presentation/screens/product/product_details_page.dart';
import 'package:glam_garb/presentation/screens/wishlist/widgets/wishlist_item_card_widget.dart';
import 'package:glam_garb/Shared/constants/constants.dart';

class WishList extends StatefulWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    WishListRepo repo = WishListRepo();
    return Scaffold(
      // backgroundColor: kblackcolor,
      appBar: AppBar(
        backgroundColor: kwhite,
        title: Text('Your wish list', style: textstyleTitle),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          BlocConsumer<WishlistBloc, WishlistState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return FutureBuilder<WishListGetModel>(
                future: repo.getWishList(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (!snapshot.hasData ||
                      snapshot.data?.products == []) {
                    return const Center(
                      child: Text(
                        'No Items found.',
                        style: TextStyle(color: kwhite),
                      ),
                    );
                  } else {
                    final wishlist = snapshot.data!;

                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          kheight20,
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: wishlist.userData!.wishlist!.length,
                            itemBuilder: (context, index) {
                              // Find the corresponding product in the products list
                              var productId =
                                  wishlist.userData!.wishlist![index].productId;
                              var product = wishlist.products!.firstWhere(
                                (product) => product.id == productId,
                                orElse: () => Product(),
                              );

                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProductDetails(
                                        title: product.productName ?? '',
                                        descr: product.description ?? '',
                                        price: product.salePrice ?? 0,
                                        imgurl: product.images ?? [],
                                        id: product.id ?? '',
                                        sizes: product.sizes ?? [],
                                        colors: product.color ?? [],
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 8,
                                  ),
                                  child: WishListCard(
                                    imageUrl: product.images?[0].url ?? "",
                                    productName: product.productName ?? "",
                                    productDescription:
                                        product.description ?? "",
                                    active: product.active ?? false,
                                    onBuy: () {},
                                    price: product.salePrice ?? 0,
                                    id: wishlist
                                            .userData!.wishlist![index].id ??
                                        "",
                                    productId: product.id ?? '',
                                  ),
                                ),
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
