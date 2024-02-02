import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Application/bloc/cart_bloc.dart';
import 'package:glam_garb/Domain/response_models/wishlist_model/wish_list_add_model/cart.dart';
import 'package:glam_garb/Shared/constants/constants.dart';

class CartItemCard extends StatefulWidget {
  final String imageUrl;
  final String itemName;
  final int itemCount;
  final dynamic price;
  final String id;
  final String size;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onDelete;

  CartItemCard({
    required this.imageUrl,
    required this.itemName,
    required this.itemCount,
    required this.onIncrement,
    required this.onDecrement,
    required this.onDelete,
    required this.price,
    required this.id,
    required this.size,
  });

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  @override
  Widget build(BuildContext context) {
    var baseUrl = 'http://10.0.2.2:3000/admin/assets/imgs/products/';
    return SizedBox(
      height: 230,
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Stack(
              children: [
                // Background Image
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(baseUrl + widget.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Cross Icon in Top-Left Corner
                Positioned(
                  top: 8,
                  left: 8,
                  child: GestureDetector(
                    onTap: widget.onDelete,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: Icon(Icons.close, color: Colors.white),
                    ),
                  ),
                ),
                // Add, Minus, and Item Count in Bottom-Right Corner
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Row(
                    children: [
                      // Minus Button
                      BlocConsumer<CartBloc, CartState>(
                        listener: (context, state) {
                          // TODO: implement listener
                        },
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: (){
                              context.read<CartBloc>().add(
                                  CartEvent.updateCartQuantity(
                                      widget.id, '-1', widget.size));
                              print(widget.id);
                              print(widget.size);
                            },
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                              child: Icon(Icons.remove, color: Colors.white),
                            ),
                          );
                        },
                      ),
                      // Item Count
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          widget.itemCount.toString(),
                          style: TextStyle(
                              fontSize: 20,
                              color: kwhite,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      // Add Button
                      BlocConsumer<CartBloc, CartState>(
                        listener: (context, state) {
                          // TODO: implement listener
                        },
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: () {
                              context.read<CartBloc>().add(
                                  CartEvent.updateCartQuantity(
                                      widget.id, '1', widget.size));
                              print(widget.id);
                              print(widget.size);
                            },
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),

                //  Positioned(
                //     bottom: 8,
                //     left: 8,
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           itemName,
                //           style: TextStyle(
                //             color: Colors.white,
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //         Text(
                //           '\$Price', // Replace 'Price' with the actual price variable
                //           style: TextStyle(
                //             color: Colors.white,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // Invisible Container to Ensure Proper Layout
                Container(
                  height: 120,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Text(
                  widget.itemName,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), color: kwhite),
                  child: Center(
                      child: Text(
                    '₹${widget.price}',
                    style: textstyle1,
                  )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
