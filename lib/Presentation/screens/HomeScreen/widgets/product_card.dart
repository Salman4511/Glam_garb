import 'package:flutter/material.dart';
import 'package:glam_garb/Shared/constants/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.width,
  });
  final double width;
  @override
  Widget build(BuildContext context) {
    var dummyimg =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKLIVGd--e77jLu-nTIG7UX9oynJ_gl2p_2A&usqp=CAU';
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 7),
          width: width,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: kradius,
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(dummyimg))),
          child: const Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                  // height: 50,
                  // width: 60,
                  child: Icon(
                Icons.favorite,
                color: Colors.red,
              ))),
        ),
        Positioned(
          left: 8,
          top: 145,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black87),
            // color: Colors.amber,
            width: 180,
            
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "  Dress",
                    style: textstyle1,
                  ),
                  Row(children: [
                    Text(
                      "  \$39",
                      style: textstyle1,
                    ),
                    SizedBox(width: 8),
                    Text(".99")
                  ])
                ]),
          ),
        )
      ],
    );
  }
}
