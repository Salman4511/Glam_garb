import 'package:flutter/material.dart';
import 'package:glam_garb/shared/constants/constants.dart';

class AdressTextFieldWidget extends StatelessWidget {
  const AdressTextFieldWidget({
    super.key,
    required this.controller,
    required this.name,
    required this.validationMessage,
    this.keyboardType,
  });

  final TextEditingController controller;
  final String name;
  final String validationMessage;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: kwhite),
      controller: controller,
      decoration: InputDecoration(
          labelText: name,
          labelStyle: const TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: kwhite),
              borderRadius: BorderRadius.circular(15)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: kwhite),
              borderRadius: BorderRadius.circular(15))),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validationMessage;
        }

        if (keyboardType == TextInputType.phone ||
            keyboardType == TextInputType.number) {
          if (double.tryParse(value) == null) {
            return 'Please enter a valid number';
          }
        }

        return null;
      },
      keyboardType: keyboardType,
    );
  }
}
