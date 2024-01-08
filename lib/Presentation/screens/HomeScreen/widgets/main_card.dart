import 'package:flutter/material.dart';
import 'package:glam_garb/Shared/constants/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
    required this.width,
  });
  final double width;
  @override
  Widget build(BuildContext context) {
    var dummyimg =
        'https://assets.vogue.com/photos/62f121b672de9093ac1bda00/master/w_2560%2Cc_limit/HIGH_SUMMER_2022_PR_MARKETING%2520CROP_HORIZONTAL6.jpg';
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      width: width,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: kradius,
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(dummyimg))),
    );
  }
}
