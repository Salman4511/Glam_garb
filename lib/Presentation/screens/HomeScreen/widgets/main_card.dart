import 'package:flutter/material.dart';
import 'package:glam_garb/Shared/constants/constants.dart';

class MainCard extends StatefulWidget {
  const MainCard({
    super.key,
    required this.width,
    required this.imageUrl,
  });
  final double width;
  final String imageUrl;

  @override
  State<MainCard> createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  @override
  Widget build(BuildContext context) {
    var baseUrl = 'https://www.elegancestores.online/admin/assets/imgs/banner/';
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      width: widget.width,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: kradius,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(baseUrl + widget.imageUrl))),
    );
  }
}
