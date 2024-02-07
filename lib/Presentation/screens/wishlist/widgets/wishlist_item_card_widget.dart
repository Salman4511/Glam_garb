
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Application/wishlist/wishlist_bloc.dart';
import 'package:glam_garb/Shared/constants/constants.dart';

class WishListCard extends StatefulWidget {
  final String imageUrl;
  final String productName;
  final String productDescription;
  final bool active;
  final int price;
  final String id;
  final String productId;

  final VoidCallback onBuy;

  WishListCard({
    required this.imageUrl,
    required this.productName,
    required this.productDescription,
    required this.active,
    required this.onBuy,
    required this.price,
    required this.id,
    required this.productId,
  });

  @override
  State<WishListCard> createState() => _WishListCardState();
}

class _WishListCardState extends State<WishListCard> {
  @override
  Widget build(BuildContext context) {
    var baseUrl = 'http://10.0.2.2:3000/admin/assets/imgs/products/';
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left side - Image Container

            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(baseUrl + widget.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Right side - Details and Buttons
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product Name
                    Text(widget.productName, style: textstyle1),
                    // Product Description
                    Text(
                      widget.productDescription,
                      style: TextStyle(fontSize: 16),
                      overflow: TextOverflow.ellipsis,
                    ),
                    // Product Size
                    Text(
                      'Status: ${widget.active}',
                      style: TextStyle(
                          fontSize: 16,
                          color: widget.active ? Colors.green : Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Prize: ₹${widget.price}',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    // Cross Icon in Top-Right Corner
                    // Align(
                    //   alignment: Alignment.topRight,
                    //   child: GestureDetector(
                    //     onTap: onDelete,
                    //     child: Container(
                    //       padding: EdgeInsets.all(4),
                    //       decoration: BoxDecoration(
                    //         shape: BoxShape.circle,
                    //         color: Colors.red,
                    //       ),
                    //       child: Icon(Icons.close, color: Colors.white),
                    //     ),
                    //   ),
                    // ),
                    kheight20,
                    // Full Width Button
                    SizedBox(
                        width: double.infinity,
                        child: BlocConsumer<WishlistBloc, WishlistState>(
                          listener: (context, state) {
                            // TODO: implement listener
                            if (state.wishlistToCart != null) {
                              if (state.wishlistToCart!.message == "") {}
                            }
                          },
                          builder: (context, state) {
                            return ElevatedButton(
                              onPressed: () {
                                context.read<WishlistBloc>().add(
                                    WishlistEvent.favToCart(widget.productId));
                                print(widget.productId);
                              },
                              child: Text(
                                'Add to Cart',
                                style: textstyle3,
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.amber)),
                            );
                          },
                        )),
                  ],
                ),
              ),
            ),
            BlocConsumer<WishlistBloc, WishlistState>(
              listener: (context, state) {
                // TODO: implement listener
                if (state.deleteWishlist != null) {
                  if (state.deleteWishlist!.mesage ==
                      "Product Successfully deleted from wishlist!") {}
                }
              },
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    context
                        .read<WishlistBloc>()
                        .add(WishlistEvent.deleteFavorite(widget.id));
                  },
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: Icon(Icons.close, color: Colors.white),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
