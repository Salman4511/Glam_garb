import 'package:flutter/material.dart';

class CouponCardWidget extends StatefulWidget {
  final String couponName;
  final String id;
  final int discount;
  final int minAmount;
  final int maxAmonut;
  final String date;
  final BuildContext parentContext;
  final String description;

  const CouponCardWidget({
    Key? key,
    required this.couponName,
    required this.id,
    required this.parentContext,
    required this.discount,
    required this.minAmount,
    required this.maxAmonut,
    required this.date,
    required this.description,
  }) : super(key: key);

  @override
  State<CouponCardWidget> createState() => _CouponCardWidgetState();
}

class _CouponCardWidgetState extends State<CouponCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: ListTile(
          contentPadding: const EdgeInsets.all(16),
          title: Text(
            widget.couponName,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          subtitle: Text(
            widget.description,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: Text(
            '₹${widget.discount.toString()}',
            style: const TextStyle(fontSize: 16),
          ),
          // trailing: Row(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     IconButton(
          //       icon: Icon(Icons.edit),
          //       onPressed: () {
          //         // Navigator.push(
          //         //     context,
          //         //     MaterialPageRoute(
          //         //       builder: (context) => EditCategory(
          //         //         initialCategory: Category(
          //         //             categoryName: widget.categoryName,
          //         //             active: widget.isActive,
          //         //             sId: widget.id,
          //         //             categoryOffer: widget.catOffer,
          //         //             minAmount: widget.minAmount,
          //         //             maxDiscount: widget.maxDiscount,
          //         //             expiry: widget.date),
          //         //       ),
          //         //     ));
          //       },
          //     ),
          //     BlocConsumer<CategoryBloc, CategoryState>(
          //       listener: (context, state) {
          //         // TODO: implement listener
          //         if (state.delCategory != null) {
          //           if (state.delCategory!.message == 'success') {
          //             ScaffoldMessenger.of(widget.parentContext).showSnackBar(
          //               const SnackBar(content: Text('Delete Successful!')),
          //             );
          //           }
          //         }
          //       },
          //       builder: (context, state) {
          //         return IconButton(
          //           icon: const Icon(Icons.delete),
          //           onPressed: () {
          //             context.read<CategoryBloc>().add(
          //                   CategoryEvent.deleteCategory(widget.id),
          //                 );
          //           },
          //         );
          //       },
          //     )
          //   ],
          // ),
        ));
  }
}
