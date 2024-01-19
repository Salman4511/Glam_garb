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
        'https://img.freepik.com/free-photo/fashionable-confident-woman-with-curly-hairs-posing-purple-wall-wearing-elegant-party-dress-spring-fashion-look-full-lenght_273443-3949.jpg?size=626&ext=jpg&ga=GA1.1.1412446893.1705017600&semt=ais';
    return Stack(
      
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 7),
          width: width,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(dummyimg))),
         
        ),
        const Positioned(
          top: 8,
          left: 150,
          child: Icon(
            Icons.favorite,
            color: Colors.red,
          ),
        ),
        Positioned(
          left: 8,
          top: 145,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight:Radius.circular(30),
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30)), color: Colors.white.withOpacity(0.8)),
            // color: Colors.amber,
            width: 80,
            height: 50,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                 kheight,
                  Row(children: [
                    Text(
                      "  \$39",
                      style: textstyle1,
                    ),
                    const SizedBox(width: 8),
                    Text(".99")
                  ])
                ]),
          ),
        )
      ],
    );
  }
}
