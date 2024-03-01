import 'package:flutter/material.dart';
import 'package:glam_garb/Shared/constants/constants.dart';

class TopLevelWidget extends StatefulWidget {
  final double radius1;
  final double radius2;
  final double radius3;
  final TextStyle textStyle1;
  final TextStyle textStyle2;
  final TextStyle textStyle3;
  final Color color1;
  final Color color2;
  final Color color3;

  const TopLevelWidget({
    super.key,
    required this.radius1,
    required this.textStyle1,
    required this.textStyle2,
    required this.textStyle3,
    required this.radius2,
    required this.radius3,
    required this.color1,
    required this.color2,
    required this.color3,
  });

  @override
  State<TopLevelWidget> createState() => _TopLevelWidgetState();
}

class _TopLevelWidgetState extends State<TopLevelWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth45,
        CircleAvatar(
          radius: widget.radius1,
          backgroundColor: widget.color1,
          child: Text('1', style: widget.textStyle1),
        ),
        kwidth5,
        Container(
          height: 2,
          width: 100,
          color:kblackcolor,
        ),
        kwidth5,
        CircleAvatar(
          radius: widget.radius2,
          backgroundColor: widget.color2,
          child: Text('2', style: widget.textStyle2),
        ),
        kwidth5,
        Container(
          height: 2,
          width: 100,
          color: kblackcolor,
        ),
        kwidth5,
        CircleAvatar(
          radius: widget.radius3,
          backgroundColor: widget.color3,
          child: Text(
            '3',
            style: widget.textStyle3,
          ),
        ),
      ],
    );
  }
}
