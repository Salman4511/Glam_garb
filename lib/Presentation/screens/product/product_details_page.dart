import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Application/wishlist/wishlist_bloc.dart';
import 'package:glam_garb/Shared/constants/constants.dart';
import 'package:glam_garb/infrastructure/service/wishlist/wishlist_repo.dart';
import 'package:slide_to_act/slide_to_act.dart';

class ProductDetails extends StatefulWidget {
  final String title;
  final String descr;
  final int price;
  final List imgurl;
  final String id;
  final List sizes;
  final List colors;
  const ProductDetails(
      {super.key,
      required this.title,
      required this.descr,
      required this.price,
      required this.imgurl,
      required this.id,
      required this.sizes,
      required this.colors});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isSlideCompleted = false;
  List<bool> isSelectedListSizes = [];
  List<bool> isSelectedListColors = [];
  WishListRepo repo = WishListRepo();

  @override
  void initState() {
    super.initState();
    isSelectedListSizes = List.generate(widget.sizes.length, (index) => false);
    isSelectedListColors =
        List.generate(widget.colors.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    var baseUrl = 'http://10.0.2.2:3000/admin/assets/imgs/products/';
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 520,
            left: 16,
            child: SizedBox(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: Text(
                        widget.descr,
                        overflow: TextOverflow.fade,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                    Text(
                      '₹${widget.price.toString()}',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          widget.sizes.length,
                          (index) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 0.0),
                            child: ChoiceChip(
                              label: Text(
                                widget.sizes[index].size,
                                style: textstyleblack,
                              ),
                              selected: isSelectedListSizes[index],
                              onSelected: (value) {
                                setState(() {
                                  isSelectedListSizes[index] = value;
                                });
                              },
                              color: MaterialStatePropertyAll(
                                Colors.grey.withOpacity(0.6),
                              ),
                              selectedColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          widget.colors.length,
                          (index) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 3.0),
                            child: ChoiceChip(
                              label: Text(
                                widget.colors[index].toString(),
                                style: textstyleblack,
                              ),
                              selected: isSelectedListColors[index],
                              onSelected: (value) {
                                setState(() {
                                  isSelectedListColors[index] = value;
                                });
                              },
                              color: MaterialStatePropertyAll(
                                Colors.grey.withOpacity(0.6),
                              ),
                              selectedColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 55,
                        ),
                        BlocConsumer<WishlistBloc, WishlistState>(
                          listener: (context, state) {
                            // TODO: implement listener
                          },
                          builder: (context, state) {
                            return InkWell(
                              onTap: () {
                                context
                                    .read<WishlistBloc>()
                                    .add(WishlistEvent.favToCart(widget.id));
                                print(widget.sizes);
                                // repo.addToCart(widget.id);
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30))),
                                height: 70,
                                width: 250,
                                child: Center(
                                    child: Text(
                                  'Add to Cart',
                                  style: textstyle1,
                                )),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            left: 82,
            child: Container(
              height: 500,
              width: 310,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(30)),
              ),
              child: Stack(children: [
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3, // Replace with the actual number of images
                  itemBuilder: (context, index) {
                    // Replace the image URL with the actual URL
                    // String imageUrl =
                    //     'https://cdn.media.amplience.net/i/mrpricegroup/01_102328494_SI_00';

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 500,
                        width: 310,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  baseUrl + widget.imgurl[index].url),
                              fit: BoxFit.cover),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(
                                  0.5), // You can change the shadow color here
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                BlocConsumer<WishlistBloc, WishlistState>(
                  listener: (context, state) {
                    if (state.wishlist != null) {
                      if (state.wishlist!.message ==
                          "Product successfully added to wishlist") {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Added to WishList'),
                          backgroundColor: Colors.red,
                        ));
                      } else if (state.wishlist!.message ==
                          "Product is already in the wishlist") {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Already in the WishList'),
                          backgroundColor: Colors.red,
                        ));
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Error Occurred! Try again later.'),
                          backgroundColor: Colors.red,
                        ));
                      }
                    }
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                          width: 305,
                          child: FutureBuilder(
                            future: repo.getWishList(),
                            builder: (context, snapshot) {
                              if (snapshot.data != null) {
                                return SlideAction(
                                  alignment: Alignment.bottomCenter,
                                  text: '   Add to Favorite',
                                  textStyle: textstyle3,
                                  sliderButtonIcon:
                                      snapshot.data!.userData!.wishlist!.any(
                                    (item) => item.productId == widget.id,
                                  )
                                          ? const Icon(Icons.favorite,
                                              color: Colors.red)
                                          : const Icon(Icons.favorite_border),
                                  submittedIcon: const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                  outerColor: kblackcolor,
                                  onSubmit: () async {
                                    context.read<WishlistBloc>().add(
                                        WishlistEvent.addFavorite(widget.id));
                                    setState(() {
                                      isSlideCompleted = true;
                                    });
                                  },
                                );
                              } else {
                                return const Text('Data is null');
                              }
                            },
                          )),
                    );
                  },
                )
              ]),
            ),
          ),

          Positioned(
            top: 45,
            left: 10,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: kwhite,
                        )),
                  ],
                ),
              ],
            ),
          ),
          // ListView.builder(
          //   scrollDirection: Axis.horizontal,
          //   itemCount: widget.sizes.length,
          //   itemBuilder: (context, index) => ChoiceChip(
          //     label: Text(
          //       widget.sizes[index].size,
          //       style: textstyleblack,
          //     ),
          //     selected: false,
          //     color: MaterialStatePropertyAll(Colors.grey.withOpacity(0.6)),
          //     selectedColor: Colors.blue,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(20.0),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
