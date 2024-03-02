import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Shared/constants/constants.dart';
import 'package:glam_garb/application/profile/profile_bloc.dart';
import 'package:glam_garb/domain/response_models/profile_model/coupon_get_model/coupon_get_model.dart';
import 'package:glam_garb/infrastructure/service/profile/profile_repo.dart';
import 'package:glam_garb/presentation/screens/profile/coupons/widgets/coupo_card_widget.dart';

class CouponsScreen extends StatefulWidget {
  const CouponsScreen({super.key});

  @override
  State<CouponsScreen> createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  @override
  Widget build(BuildContext context) {
    ProfileRepo repo = ProfileRepo();
    return Scaffold(
      // backgroundColor: kblackcolor,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  kheight60,
                  BlocBuilder<ProfileBloc, ProfileState>(
                    builder: (context, state) {
                      return FutureBuilder<CouponGetModel>(
                        future: repo.coupons(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                                child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (!snapshot.hasData ||
                              snapshot.data?.coupons == null) {
                            return const Text('No categories found.');
                          } else {
                            final coupon = snapshot.data!.coupons!;
                            return ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: coupon.length,
                              itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  // Navigate or do something with the selected category
                                },
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 8,
                                  ),
                                  child: CouponCardWidget(
                                    date: coupon[index].expiry ?? '',
                                    couponName: coupon[index].code ?? '',
                                    id: coupon[index].id ?? '',
                                    parentContext: context,
                                    discount: coupon[index].discount ?? 0,
                                    minAmount: coupon[index].minimumAmount ?? 0,
                                    maxAmonut: coupon[index].maximumAmount ?? 0,
                                    description:
                                        coupon[index].description ?? '',
                                  ),
                                ),
                              ),
                            );
                          }
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        // color: kwhite,
                      ),
                    ),
                    kwidth100,
                    Text(
                      'Coupons',
                      style: textstyle1,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
