import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Shared/constants/constants.dart';
import 'package:glam_garb/application/checkOut/check_out_bloc.dart';
import 'package:glam_garb/presentation/screens/cart/check_out/check_out_screens/order_summary_screen.dart';
import 'package:glam_garb/presentation/screens/profile/address/add_address.dart';

class CheckOutBottomButtonsWidget extends StatefulWidget {
  const CheckOutBottomButtonsWidget({
    super.key,
    required this.selectedAddressId,
    required this.name,
    required this.houseName,
    required this.area,
    required this.city,
    required this.state,
    required this.pincode,
    required this.phone,
    required this.catDiscount,
  });

  final String selectedAddressId;
  final String name;
  final String houseName;
  final String area;
  final String city;
  final String state;
  final int pincode;
  final int phone;
  final int catDiscount;
  @override
  State<CheckOutBottomButtonsWidget> createState() =>
      _CheckOutBottomButtonsWidgetState();
}

class _CheckOutBottomButtonsWidgetState
    extends State<CheckOutBottomButtonsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.orangeAccent),
            fixedSize: MaterialStatePropertyAll(Size(195, 50)),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddAddressScreen(),
                ));
          },
          child: Text(
            'Add Address',
            style: textstyle3,
          ),
        ),
        BlocConsumer<CheckOutBloc, CheckOutState>(
          listener: (context, state) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => OrderSummaryScreen(
                          selectedAddressId: widget.selectedAddressId,
                          name: widget.name,
                          houseName: widget.houseName,
                          area: widget.area,
                          city: widget.city,
                          state: widget.state,
                          pincode: widget.pincode,
                          phone: widget.phone,
                          catDiscount: widget.catDiscount,
                        )));
            // TODO: implement listener
            // if (state.selectAdress != null) {
            //   if (state.selectAdress!.message ==
            //       "Address selected successfully") {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => OrderSummaryScreen(
            //                   selectedAddressId: widget.selectedAddressId,
            //                   name: widget.name,
            //                   houseName: widget.houseName,
            //                   area: widget.area,
            //                   city: widget.city,
            //                   state: widget.state,
            //                   pincode: widget.pincode,
            //                   phone: widget.phone,
            //                 )));
            //   } else {
            //     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            //       content: Text('Select Any Address'),
            //       backgroundColor: Colors.red,
            //     ));
            //   }
            // }
          },
          builder: (context, state) {
            return ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.amber),
                fixedSize: MaterialStatePropertyAll(Size(195, 50)),
              ),
              onPressed: () {
                context
                    .read<CheckOutBloc>()
                    .add(CheckOutEvent.selectAddress(widget.selectedAddressId));

                print(widget.selectedAddressId);
              },
              child: Text(
                'Continue',
                style: textstyle3,
              ),
            );
          },
        )
      ],
    );
  }
}
