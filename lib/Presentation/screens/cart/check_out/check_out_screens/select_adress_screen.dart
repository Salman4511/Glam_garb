import 'package:flutter/material.dart';
import 'package:glam_garb/Shared/constants/constants.dart';
import 'package:glam_garb/domain/response_models/check_out_model/check_out_model/check_out_model.dart';
import 'package:glam_garb/infrastructure/service/checkOut/check_out_repo.dart';
import 'package:glam_garb/presentation/screens/cart/check_out/check_out_screens/widgets/bottom_buttons_widget.dart';
import 'package:glam_garb/presentation/screens/cart/check_out/check_out_screens/widgets/top_level_widget.dart';

class CheckOutAddressScreen extends StatefulWidget {
  const CheckOutAddressScreen({super.key});

  @override
  State<CheckOutAddressScreen> createState() => _CheckOutAddressScreenState();
}

class _CheckOutAddressScreenState extends State<CheckOutAddressScreen> {
  int selectedCardIndex = 0; // Initially no card selected
  String selectedAddressId = '';
  String name = '';
  String houseName = '';
  String area = '';
  String city = '';
  String state = '';
  int pincode = 0;
  int? phone;
  int? catDiscount;

  @override
  Widget build(BuildContext context) {
    CheckOutRepo repo = CheckOutRepo();

    return Scaffold(
      // backgroundColor: Colors.grey,
      body: ListView(
        children: [
          kheight,
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    // color: kwhite,
                  )),
              Text(
                'Select Address',
                style: textstyle1,
              ),
            ],
          ),
          kheight,
          TopLevelWidget(
            radius1: 15,
            textStyle1: textstyle3,
            textStyle2: textstyle4,
            textStyle3: textstyle4,
            radius2: 13,
            radius3: 13,
            color1: baseColor,
            color2: Colors.grey,
            color3: Colors.grey,
          ),
          Column(
            children: [
              kheight50,
              Row(
                children: [
                  kwidth,
                  Text('Default Address', style: textstyle1),
                ],
              ),
            ],
          ),
          kheight,
          Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 120,
                      child: FutureBuilder<CheckOutModel>(
                        future: repo.checkOut(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                                child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (!snapshot.hasData ||
                              snapshot.data?.productsInCart == null) {
                            return Center(
                              child: Text(
                                'No items found.',
                                style: textstyleWhite,
                              ),
                            );
                          } else {
                            final userData = snapshot.data!.userData;
                            final data = snapshot.data;
                            selectedAddressId = userData![0].address![0].id ?? '';
                            name = userData[0].address![0].name ?? '';
                            houseName = userData[0].address![0].housename ?? '';
                            area = userData[0].address![0].area ?? '';
                            city = userData[0].address![0].city ?? '';
                            state = userData[0].address![0].state ?? '';
                            pincode = userData[0].address![0].pincode ?? 0;
                            phone = userData[0].address![0].mobile ?? 0;
                            catDiscount = data!.catDiscount ?? 0;
                            return ListView.builder(
                              itemCount: 1,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedCardIndex = index;
                                      selectedAddressId =
                                          userData[0].address![index].id ?? '';
                                      name =
                                          userData[0].address![index].name ?? '';
                                      houseName =
                                          userData[0].address![0].housename ?? '';
                                      area =
                                          userData[0].address![index].area ?? '';
                                      city =
                                          userData[0].address![index].city ?? '';
                                      state =
                                          userData[0].address![index].state ?? '';
                                      pincode =
                                          userData[0].address![index].pincode ??
                                              0;
                                      phone =
                                          userData[0].address![index].mobile ?? 0;
                                    });
                                  },
                                  child: Card(
                                    color: selectedCardIndex == index
                                        ? Colors.cyan
                                        : kwhite,
                                    child: Column(
                                      children: [
                                        kheight,
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              userData[0].address![index].name ??
                                                  '',
                                              style: textstyle4,
                                            ),
                                          ],
                                        ),
                                        kheight,
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              '${userData[0].address![index].housename}, ${userData[0].address![index].area!}, ${userData[0].address![index].city!}',
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                                '${userData[0].address![index].state} ${userData[0].address![index].pincode}'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                                'Mobile: ${userData[0].address![index].mobile ?? 0}'),
                                          ],
                                        ),
                                        kheight
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  kheight50,
                  Row(
                    children: [
                      kwidth,
                      Text('Other Address:', style: textstyle1),
                    ],
                  ),
                  kheight20,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 400,
                      child: FutureBuilder<CheckOutModel>(
                        future: repo.checkOut(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                                child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (!snapshot.hasData ||
                              snapshot.data?.productsInCart == null) {
                            return Center(
                              child: Text(
                                'No items found.',
                                style: textstyleWhite,
                              ),
                            );
                          } else {
                            final userData = snapshot.data!.userData;
                            return ListView.builder(
                                itemCount: userData![0].address!.length,
                                itemBuilder: (context, index) {
                                  if (index > 0) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selectedCardIndex = index;
                                          selectedAddressId =
                                              userData[0].address![index].id ??
                                                  '';
                                          name =
                                              userData[0].address![index].name ??
                                                  '';
                                          houseName =
                                              userData[0].address![0].housename ??
                                                  '';
                                          area =
                                              userData[0].address![index].area ??
                                                  '';
                                          city =
                                              userData[0].address![index].city ??
                                                  '';
                                          state =
                                              userData[0].address![index].state ??
                                                  '';
                                          pincode = userData[0]
                                                  .address![index]
                                                  .pincode ??
                                              0;
                                          phone = userData[0]
                                                  .address![index]
                                                  .mobile ??
                                              0;
                                        });
                                      },
                                      child: Card(
                                        color: selectedCardIndex == index
                                            ? Colors.cyan
                                            : kwhite,
                                        child: Column(
                                          children: [
                                            kheight,
                                            Row(
                                              children: [
                                               const SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  userData[0]
                                                          .address![index]
                                                          .name ??
                                                      '',
                                                  style: textstyle4,
                                                ),
                                              ],
                                            ),
                                            kheight,
                                            Row(
                                              children: [
                                                const SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  '${userData[0].address![index].housename}, ${userData[0].address![index].area!}, ${userData[0].address![index].city!}',
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                               const SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                    '${userData[0].address![index].state} ${userData[0].address![index].pincode}'),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                               const SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                    'Mobile: ${userData[0].address![index].mobile}'),
                                              ],
                                            ),
                                            kheight
                                          ],
                                        ),
                                      ),
                                    );
                                  } else {
                                    return kheight;
                                  }
                                });
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 550,
                child: CheckOutBottomButtonsWidget(
                  selectedAddressId: selectedAddressId,
                  name: name,
                  houseName: houseName,
                  area: area,
                  city: city,
                  state: state,
                  pincode: pincode,
                  phone: phone ?? 0,
                  catDiscount: catDiscount ?? 0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
