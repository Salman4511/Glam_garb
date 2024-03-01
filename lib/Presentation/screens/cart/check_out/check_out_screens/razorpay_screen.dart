import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:glam_garb/application/place_order/place_order_bloc.dart';
import 'package:glam_garb/presentation/screens/NavBar/nav_bar.dart';
import 'package:glam_garb/shared/constants/constants.dart';

import 'package:razorpay_flutter/razorpay_flutter.dart';

class PlaceOrderWithRazorPay extends StatefulWidget {
  final int total;
  final int discount;
  final int catDiscount;
  final int discountedTotal;
  const PlaceOrderWithRazorPay(
      {super.key,
      required this.total,
      required this.discount,
      required this.catDiscount, required this.discountedTotal});

  @override
  State<PlaceOrderWithRazorPay> createState() => _PlaceOrderWithRazorPayState();
}

class _PlaceOrderWithRazorPayState extends State<PlaceOrderWithRazorPay> {
  late Razorpay _razorpay;
  int paymentId = 0;

  @override
  void initState() {
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhite,
      ),
      body: Column(
        children: [
          kheight20,
          Row(
            children: [
              kwidth,
              Text('Click Place Order For ',style: textstyle1,)
            ],
          ),
          Text(
            'Confirm The Order...',
            style: textstyle1,
          ),
          kheight50,
          Center(
            
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Set border color as needed
                    width: 2.0, // Set border width as needed
                  ),
                  borderRadius: BorderRadius.circular(
                      8.0), // Adjust border radius as needed
                ),
                child: Row(
                  children: [
                    kwidth45,
                    Text(
                      "₹${widget.discountedTotal<0?1: widget.discountedTotal.toString()}",style: textstyle1,
                    ),
                    Spacer(),
                    ElevatedButton(
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(baseColor)),
                        onPressed: () async {
                          var options = {
                            'method': {
                              'netbanking': true,
                              'card': true,
                              'upi': true,
                              'wallet': true,
                            },
                            'key': 'rzp_test_ghgpkn7YCYJJZQ',
                            'amount':
                                widget.total * 100, //in the smallest currency sub-unit.
                            'name': 'user',
                            "entity": "order",
                            "status": "created",
                            "currency": "INR",
                            // 'order_id': 'order_EMBFqjDHEEn80l',
                            "notes": [], // Generate order_id using Orders API
                            'description': 'razorpay glamgarbapp',
                            'timeout': 120, // in seconds
                            'prefill': {
                              'contact': '9895840715',
                              'email': 'user@gmail.com'
                            }
                          };
                          // paymentId = state.selectedPaymentMethod!.id!;
                          _razorpay.open(options);
                        },
                        child: const Text(
                          "Place Order",
                          style:
                              TextStyle(fontWeight: FontWeight.w700, color: kwhite),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: "Payment Success : ${response.paymentId}",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: kwhite,
        fontSize: 16.0);
    context.read<PlaceOrderBloc>().add(PlaceOrderEvent.placeOrderRazorpay(
        'razorpay', widget.discount, widget.catDiscount));
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => navPage()),
      (route) => false,
    );
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "Payment  Failed Tryagain",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: kwhite,
        fontSize: 16.0);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    log('external handler');
  }
}
