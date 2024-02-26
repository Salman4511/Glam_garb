import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/application/profile/profile_bloc.dart';
import 'package:glam_garb/presentation/screens/profile/widgets/address_textfield_widget.dart';
import 'package:glam_garb/shared/constants/constants.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({super.key});

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController mobileController = TextEditingController();

  final TextEditingController houseNameController = TextEditingController();

  final TextEditingController areaController = TextEditingController();

  final TextEditingController cityController = TextEditingController();

  final TextEditingController stateController = TextEditingController();

  final TextEditingController pincodeController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblackcolor,
      appBar: AppBar(
        title: Text(
          'User Details Form',
          style: textstyle3,
        ),
        backgroundColor: kblackcolor,
        leading: Icon(
          Icons.arrow_back_ios,
          color: kwhite,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                AdressTextFieldWidget(
                  controller: nameController,
                  name: 'Name',
                  validationMessage: 'Please Enter Name',
                ),
                kheight,
                AdressTextFieldWidget(
                  controller: mobileController,
                  name: 'Mobile',
                  validationMessage: 'Please enter your mobile number',
                  keyboardType: TextInputType.phone,
                ),
                kheight,
                AdressTextFieldWidget(
                  controller: houseNameController,
                  name: 'House Name',
                  validationMessage: 'Please enter your house name',
                ),
                kheight,
                AdressTextFieldWidget(
                  controller: areaController,
                  name: 'Area',
                  validationMessage: 'Please enter your area',
                ),
                kheight,
                AdressTextFieldWidget(
                  controller: cityController,
                  name: 'City',
                  validationMessage: 'Please enter your city',
                ),
                kheight,
                AdressTextFieldWidget(
                  controller: stateController,
                  name: 'State',
                  validationMessage: 'Please enter your state',
                ),
                kheight,
                AdressTextFieldWidget(
                  controller: pincodeController,
                  name: 'Pincode',
                  validationMessage: 'Please enter your PinCode',
                  keyboardType: TextInputType.number,
                ),
                kheight50,
                BlocConsumer<ProfileBloc, ProfileState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() == true) {
                          context.read<ProfileBloc>().add(
                              ProfileEvent.addAddress(
                                  nameController.text,
                                  houseNameController.text,
                                  int.tryParse(mobileController.text)!,
                                  cityController.text,
                                  areaController.text,
                                  stateController.text,
                                  int.tryParse(pincodeController.text)!));
                          Navigator.pop(context);
                        }
                      },
                      child: const Text('Save'),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
