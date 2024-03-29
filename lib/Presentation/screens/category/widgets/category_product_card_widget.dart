import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Application/wishlist/wishlist_bloc.dart';
import 'package:glam_garb/Shared/constants/constants.dart';
import 'package:glam_garb/infrastructure/service/wishlist/wishlist_repo.dart';

class ProductCardWidget extends StatefulWidget {
  final int salePrice;
  final String imgurl;
  final String id;
  final String productName;
  final String productId;
  const ProductCardWidget({
    super.key,
    required this.width,
    required this.salePrice,
    required this.imgurl,
    required this.id,
    required this.productName,
    required this.productId,
  });
  final double width;

  @override
  State<ProductCardWidget> createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  bool isFavorited = false;
  WishListRepo repo = WishListRepo();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var baseUrl = 'https://www.elegancestores.online/admin/assets/imgs/products/';
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 7),
          width: widget.width,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(baseUrl + widget.imgurl))),
        ),
        Positioned(
          top: 8,
          left: size.width*0.4,
          child: BlocConsumer<WishlistBloc, WishlistState>(
            listener: (context, state) {
              // TODO: implement listener
              //  if (state.wishlist != null) {
              // if (state.wishlist!.message ==
              //     "Product successfully added to wishlist") {
              //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              //     content: Text('Added to WishList'),
              //     backgroundColor: Colors.red,
              //   ));
              // } else if (state.wishlist!.message ==
              //     "Product is already in the wishlist") {
              //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              //     content: Text('Already in the WishList'),
              //     backgroundColor: Colors.red,
              //   ));
              // } else {
              //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              //     content: Text('Error Occurred! Try again later.'),
              //     backgroundColor: Colors.red,
              //   ));
              // }
              // }
            },
            builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    isFavorited = !isFavorited;
                  });
                  if (isFavorited == true) {
                    context
                        .read<WishlistBloc>()
                        .add(WishlistEvent.addFavorite(widget.id));
                  } else {
                    context
                        .read<WishlistBloc>()
                        .add(WishlistEvent.deleteFavorite(widget.productId));
                  }
                  print(widget.id);
                },
                child: FutureBuilder(
                  future: repo.getWishList(),
                  builder: (context, snapshot) => Icon(
                    snapshot.data!.userData!.wishlist!.any(
                      (item) => item.productId == widget.id,
                    )
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: snapshot.data!.userData!.wishlist!.any(
                      (item) => item.productId == widget.id,
                    )
                        ? Colors.red
                        : Colors.white,
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
          left: 8,
          top: size.height*0.155,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(10)),
                color: baseColor.withOpacity(0.9)),
            // color: Colors.amber,
            width: 100,
            height: 55,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    ' ${widget.productName}',
                    style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,fontFamily: 'Courier'),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(children: [
                    Text(
                      ' ₹${widget.salePrice.toString()}',
                      style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Courier')
                    ),
                  ])
                ]),
          ),
        )
      ],
    );
  }
}
