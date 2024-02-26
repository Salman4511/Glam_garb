import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Presentation/screens/HomeScreen/home_screen.dart';
import 'package:glam_garb/application/coupon/coupon_bloc.dart';
import 'package:glam_garb/application/place_order/place_order_bloc.dart';
import 'package:glam_garb/presentation/screens/NavBar/nav_bar.dart';
import 'package:glam_garb/presentation/screens/cart/check_out/check_out_screens/razorpay_screen.dart';
import 'package:glam_garb/presentation/screens/cart/check_out/check_out_screens/widgets/top_level_widget.dart';
import 'package:glam_garb/shared/constants/constants.dart';

// class PaymentScreen extends StatefulWidget {
//   final int total;
//   const PaymentScreen({Key? key, required this.total}) : super(key: key);

//   @override
//   _PaymentScreenState createState() => _PaymentScreenState();
// }

// class _PaymentScreenState extends State<PaymentScreen> {
//   // Selected payment method (initially set to Razorpay)
//   String selectedPaymentMethod = 'razorpay';

//   // Coupon code input controller
//   TextEditingController couponCodeController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kblackcolor,
//       body: ListView(
//         children: [
//           kheight50,
//           TopLevelWidget(
//             radius1: 13,
//             textStyle1: textstyle4,
//             textStyle2: textstyle4,
//             textStyle3: textstyle3,
//             radius2: 13,
//             radius3: 15,
//             color3: Colors.blue,
//             color1: kwhite,
//             color2: kwhite,
//           ),
//           kheight50,
//           Padding(
//             padding: const EdgeInsets.only(top: 100, left: 12, right: 12),
//             child: Container(
//               height: 350,
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 color: kwhite,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'Select Payment Method',
//                     style: TextStyle(
//                       color: kblackcolor,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//                   Row(
//                     children: [
//                       Radio(
//                         value: 'razorpay',
//                         groupValue: selectedPaymentMethod,
//                         onChanged: (value) {
//                           setState(() {
//                             selectedPaymentMethod = value.toString();
//                           });
//                         },
//                       ),
//                       const Text('Razorpay'),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Radio(
//                         value: 'cashondelivery',
//                         groupValue: selectedPaymentMethod,
//                         onChanged: (value) {
//                           setState(() {
//                             selectedPaymentMethod = value.toString();
//                           });
//                         },
//                       ),
//                       const Text('Cash on Delivery'),
//                     ],
//                   ),
//                   kheight20,
//                   Row(
//                     children: [
//                       kwidth,
//                       const Text('Have a Coupon?'),
//                       TextButton(
//                         onPressed: () {
//                           showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
//                               final scaffoldContext = context;
//                               return AlertDialog(
//                                 title: const Text('Enter your coupon code '),
//                                 content: TextFormField(
//                                   controller: couponCodeController,
//                                   decoration: const InputDecoration(
//                                     labelText: 'Coupon Code',
//                                     border: OutlineInputBorder(
//                                       borderSide:
//                                           BorderSide(color: Colors.black),
//                                     ),
//                                   ),
//                                 ),
//                                 actions: <Widget>[
//                                   TextButton(
//                                     onPressed: () {
//                                       Navigator.pop(context);
//                                     },
//                                     child: const Text('Cancel'),
//                                   ),

//                                   BlocConsumer<CouponBloc, CouponState>(
//                                     listener: (context, state) {
//                                      if(state.coupon!=null){
//                                       if(state.coupon!.discount!=null){
//                                         ScaffoldMessenger.of(context).showSnackBar(
//                                           SnackBar(content:Text('Applied the Discount'),
//                                           backgroundColor: Colors.red,)
//                                         );
//                                       }
//                                       else if(state.coupon!.message!=''){
//                                        ScaffoldMessenger.of(context)
//                                               .showSnackBar(const SnackBar(
//                                             content:
//                                                 Text('Invalid or amount doesnt meet coupon requirements'),
//                                             backgroundColor: Colors.red,
//                                           ));
//                                       }
//                                      }
//                                       },
//                                     builder: (context, state) {
//                                       return ElevatedButton(
//                                         onPressed: () {
//                                           String couponCode =
//                                               couponCodeController.text;
//                                            context.read<CouponBloc>().add(
//                                               CouponEvent.applyCoupon(widget.total, couponCode));
//                                           print('Coupon Code: $couponCode');
//                                           couponCodeController.clear();
//                                           Navigator.pop(context);
//                                         },
//                                         child: const Text('Apply'),
//                                       );
//                                     },
//                                   ),
//                                 ],
//                               );
//                             },
//                           );
//                         },
//                         child: const Text('Enter Coupon Code Here'),
//                       )
//                     ],
//                   ),
//                   kheight50,
//                   Padding(
//                     padding: const EdgeInsets.only(left: 100),
//                     child: ElevatedButton(
//                       style: const ButtonStyle(
//                         backgroundColor:
//                             MaterialStatePropertyAll(Colors.redAccent),
//                       ),
//                       onPressed: () {},
//                       child: Text(
//                         'Continue',
//                         style: textstyle3,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class PaymentScreen extends StatefulWidget {
  final int total;
  final int catDiscount;
  const PaymentScreen(
      {Key? key, required this.total, required this.catDiscount})
      : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  // Selected payment method (initially set to Razorpay)
  String selectedPaymentMethod = 'razorpay';

  // Coupon code input controller
  TextEditingController couponCodeController = TextEditingController();

  // Flag to determine if the coupon entry fields should be visible
  bool showCouponEntry = false;
  dynamic discount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblackcolor,
      body: Builder(
        builder: (BuildContext scaffoldContext) {
          return ListView(
            children: [
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
                textStyle2: textstyle4,
                textStyle3: textstyle3,
                radius2: 13,
                radius3: 15,
                color3: Colors.blue,
                color1: kwhite,
                color2: kwhite,
              ),
              kheight20,
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 12, right: 12),
                child: Container(
                  // height: 350,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: kwhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Select Payment Method',
                        style: TextStyle(
                          color: kblackcolor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Radio(
                            value: 'razorpay',
                            groupValue: selectedPaymentMethod,
                            onChanged: (value) {
                              setState(() {
                                selectedPaymentMethod = value.toString();
                              });
                            },
                          ),
                          const Text('Razorpay'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 'cashondelivery',
                            groupValue: selectedPaymentMethod,
                            onChanged: (value) {
                              setState(() {
                                selectedPaymentMethod = value.toString();
                              });
                            },
                          ),
                          const Text('Cash on Delivery'),
                        ],
                      ),
                      kheight20,
                      Row(
                        children: [
                          kwidth,
                          const Text('Have a Coupon?'),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                showCouponEntry = !showCouponEntry;
                              });
                            },
                            child: const Text('Enter Coupon Code Here'),
                          ),
                        ],
                      ),
                      if (showCouponEntry)
                        Column(
                          children: [
                            const SizedBox(height: 16),
                            TextFormField(
                              controller: couponCodeController,
                              decoration: const InputDecoration(
                                labelText: 'Coupon Code',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            kheight,
                            BlocConsumer<CouponBloc, CouponState>(
                              listener: (context, state) {
                                if (state.coupon != null) {
                                  if (state.coupon!.discount != null) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text('Applied the Discount'),
                                      backgroundColor: Colors.red,
                                    ));
                                  } else if (state.coupon!.message != '') {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text(
                                          'Invalid or amount doesnt meet coupon requirements'),
                                      backgroundColor: Colors.red,
                                    ));
                                  }
                                }
                              },
                              builder: (context, state) {
                                return ElevatedButton(
                                  onPressed: () {
                                    String couponCode =
                                        couponCodeController.text;
                                    context.read<CouponBloc>().add(
                                        CouponEvent.applyCoupon(
                                            widget.total, couponCode));
                                    discount = state.coupon!.discount;
                                  },
                                  child: const Text('Apply'),
                                );
                              },
                            ),
                          ],
                        ),
                      kheight50,
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: BlocConsumer<PlaceOrderBloc, PlaceOrderState>(
                          listener: (context, state) {
                            // TODO: implement listener
                            if (state.cod != null) {
                              if (state.cod!.codsuccess == true) {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text(
                                        'Order Placed Successfully',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                      content:
                                          Text('Thank you for your order!'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      navPage()),
                                              (route) => false,
                                            );
                                          },
                                          child: Text('OK'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            }
                          },
                          builder: (context, state) {
                            return ElevatedButton(
                              style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.redAccent),
                              ),
                              onPressed: () {
                                if (selectedPaymentMethod == 'cashondelivery') {
                                  context.read<PlaceOrderBloc>().add(
                                      PlaceOrderEvent.placeOrder(
                                          'cod', discount, widget.catDiscount));
                                } else if (selectedPaymentMethod ==
                                    'razorpay') {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            PlaceOrderWithRazorPay(
                                          total: widget.total,
                                          discount: discount,
                                          catDiscount: widget.catDiscount,
                                        ),
                                      ));
                                }
                              },
                              child: Text(
                                'Continue',
                                style: textstyle3,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
