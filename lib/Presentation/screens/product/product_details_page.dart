import 'package:flutter/material.dart';
import 'package:glam_garb/Shared/constants/constants.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          
          Positioned(
            top: 550,
            left: 16,
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Evening Summer Dress',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                  Text('\$899',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  Row(
                    
                    children: [
                      ChoiceChip(label: Text('S',
                          style: textstyleblack,
                        ), selected: false,
                      color: MaterialStatePropertyAll(Colors.grey.withOpacity(0.6)),
                      selectedColor: Colors.blue,
                       shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                       ),
                       ChoiceChip(
                        label: Text('M',style: textstyleblack,),
                        selected: false,
                        color: MaterialStatePropertyAll(Colors.grey),
                        selectedColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      ChoiceChip(
                        label: Text('L',style: textstyleblack,),
                        selected: false,
                        color: MaterialStatePropertyAll(Colors.grey),
                        selectedColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      ChoiceChip(
                        label: Text('XL',
                          style: textstyleblack,
                        ),
                        selected: false,
                        color: MaterialStatePropertyAll(Colors.grey),
                        selectedColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 102,),
                   Row(
                     children: [
                      SizedBox(width: 55,),
                       InkWell(
                         child: Container(
                                     decoration: BoxDecoration(
                                       color: Colors.yellow,
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                                     
                                     ),
                                     child: Center(child: Text('Add to Cart',style: textstyle1,)),
                                     height: 70,
                                     width: 250,
                                   ),
                       ),
                     ],
                   ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 82,
            child: Container(
              height: 500,
              width: 310,
              // color: Colors.amber,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage('https://cdn.media.amplience.net/i/mrpricegroup/01_102328494_SI_00'),
                fit: BoxFit.cover),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                boxShadow:  [
                  BoxShadow(
                    color: Colors.grey.withOpacity(
                        0.5), // You can change the shadow color here
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(
          //   child: Container(
          //     color: Colors.amber,
          //     height: 70,
          //     width: 250,
          //   ),
          // )
        ],
      ),
    );
  }
}