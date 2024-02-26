import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Shared/constants/constants.dart';
import 'package:glam_garb/application/profile/profile_bloc.dart';
import 'package:glam_garb/presentation/screens/profile/my_orders/my_orders_screen.dart';

class ReturnOrderScreen extends StatefulWidget {
  final String id;
  const ReturnOrderScreen({Key? key, required this.id}) : super(key: key);

  @override
  State<ReturnOrderScreen> createState() => _ReturnOrderScreenState();
}

class _ReturnOrderScreenState extends State<ReturnOrderScreen> {
  String? selectedReason;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblackcolor,
      appBar: AppBar(
        backgroundColor: kblackcolor,
        title: Text('My Orders', style: textstyleTitle),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: kwhite,
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: kwhite,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: DropdownButton<String>(
                  value: selectedReason,
                  hint: const Text(
                    'Select a reason',
                    style: TextStyle(color: Colors.black),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedReason = newValue!;
                    });
                  },
                  items: [
                    const DropdownMenuItem<String>(
                      value: 'Wrong Item Delivered',
                      child: Text('Wrong Item Delivered'),
                    ),
                    const DropdownMenuItem<String>(
                      value: 'Damaged or Defective Product',
                      child: Text('Damaged or Defective Product'),
                    ),
                    const DropdownMenuItem<String>(
                      value: 'Size or Fit Issue',
                      child: Text('Size or Fit Issue'),
                    ),
                    const DropdownMenuItem<String>(
                      value: 'Changed My Mind',
                      child: Text('Changed My Mind'),
                    ),
                    const DropdownMenuItem<String>(
                      value: 'Late Delivery',
                      child: Text('Late Delivery'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            BlocConsumer<ProfileBloc, ProfileState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () {
                    // Handle the return request
                    if (selectedReason != null) {
                      context
                          .read<ProfileBloc>()
                          .add(ProfileEvent.returnRequest(widget.id,selectedReason!));
                           showDialog(
          context: context,
          builder: (BuildContext dialogContext) {
            return AlertDialog(
              title: Text('Return Request Submitted'),
              content: Text('Your return request has been submitted successfully.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(dialogContext).pop(); // Close the dialog
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyOrderScreen(),)); // Navigate back to Order Screen
                  },
                  child: Text('OK'),
                ),
              ],
            );
          }
                           );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('Please Select Any Reason'),backgroundColor: Colors.red,));
                    }
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.amber)),
                  child: Text('Submit Return Request', style: textstyle3),
                );
              },
            ),
            kheight90,
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Note: Please make sure the item is in its original condition with all tags and packaging intact.',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
