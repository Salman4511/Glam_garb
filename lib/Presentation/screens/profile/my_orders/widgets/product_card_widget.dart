import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Shared/constants/constants.dart';
import 'package:glam_garb/application/profile/profile_bloc.dart';
import 'package:glam_garb/presentation/screens/profile/my_orders/return_order_screen.dart';

class OrderProductCard extends StatefulWidget {
  final String imageUrl;
  final String productName;
  final String productDescription;
  final String status;
  final int price;
  final String id;
  final String productId;
  final String returnRequest;

  final VoidCallback onBuy;

  OrderProductCard({
    super.key,
    required this.imageUrl,
    required this.productName,
    required this.productDescription,
    required this.status,
    required this.onBuy,
    required this.price,
    required this.id,
    required this.productId, required this.returnRequest,
  });

  @override
  State<OrderProductCard> createState() => _OrderProductCardState();
}

class _OrderProductCardState extends State<OrderProductCard> {
  @override
  Widget build(BuildContext context) {
    var baseUrl = 'http://10.0.2.2:3000/admin/assets/imgs/products/';
    return Card(
      color: baseColor.shade100,
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
                      'Status: ${widget.status}',
                      style: TextStyle(
                          fontSize: 16,
                          // color: widget.active ? Colors.green : Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    widget.returnRequest!=''?
                     Text(
                      widget.returnRequest,
                      style:widget.returnRequest=='Return Rejected'?textstyleForRequestReject:
                       widget.returnRequest=='Return Accepted'?textstyleForRequestAccept:
                      textstyleForRequested
                    ):SizedBox(),
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
                        child: BlocConsumer<ProfileBloc, ProfileState>(
                          listener: (context, state) {
                            // TODO: implement listener
                          },
                          builder: (context, state) {
                            return ElevatedButton(
                              onPressed: () {
                                if ((widget.status == "Delivered"&&widget.returnRequest!="Return Accepted"&&
                                        widget.returnRequest !=
                                            "Return requested")||widget.returnRequest=='Return Rejected') {

                              
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ReturnOrderScreen(id:widget.id,)));
                                 
                                } else if (widget.status == "Pending") {
                                  context
                                      .read<ProfileBloc>()
                                      .add(ProfileEvent.cancelOrder(widget.id));
                                }
                              },
                              style: ButtonStyle(
                                backgroundColor: widget.status == "Cancelled"
                                    ? MaterialStatePropertyAll(Colors.grey)
                                    :widget.returnRequest=="Return Rejected"?MaterialStatePropertyAll(Colors.red):
                                    widget.returnRequest=="Return Accepted"?MaterialStatePropertyAll(Colors.green): MaterialStatePropertyAll(Colors.amber),
                              ),
                              child: Opacity(
                                opacity:
                                    widget.status == "Cancelled" ? 0.5 : 1.0,
                                child: Text(
                                  widget.status == "Cancelled"
                                      ? 'Cancelled'
                                      : widget.status == "Pending" &&
                                              widget.returnRequest == ''||
                                              widget.status == "Shipped"
                                          ? 'Cancel'
                                          : widget.status == "Delivered"&& widget.returnRequest==''
                                              ? 'Request'
                                              : widget.returnRequest ==
                                                      "Return requested"
                                                  ? 'Return Requested'
                                                  : widget.returnRequest ==
                                                          "Return Accepted"
                                                      ? 'Request Accepted'
                                                      : widget.returnRequest ==
                                                              "Return Rejected"
                                                          ? 'Re-request'
                                                          : '',
                                  style: textstyle3,
                                ),

                              ),
                            );
                          },
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
