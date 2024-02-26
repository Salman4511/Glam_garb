import 'package:flutter/material.dart';
import 'package:glam_garb/Shared/constants/constants.dart';
import 'package:glam_garb/infrastructure/service/profile/profile_repo.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    ProfileRepo repo = ProfileRepo();
    return Scaffold(
      backgroundColor: kblackcolor,
      appBar: AppBar(
        backgroundColor: kblackcolor,
        title: Text('My Wallet', style: textstyleTitle),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: kwhite,
            )),
      ),
      body: Row(
        children: [
          kwidth45,
          Column(
            children: [
              kheight50,
              FutureBuilder(
                future: repo.wallet(),
                builder: (context, snapshot) {
                  return Container(
                    height: 170,
                    width: 300,
                    color: kwhite,
                    child: Column(
                      children: [
                        kheight20,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            kwidth,
                            Text(
                              'My Wallet',
                              style: textstyle1,
                            ),
                            Spacer(),
                            Text(
                              'Rs:${snapshot.data?.userData![0].wallet}',
                              style: textstyle5,
                            ),
                            kwidth
                          ],
                        ),
                        kheight50,
                        Divider(
                          color: kblackcolor,
                        ),
                        Row(
                          children: [
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Back',
                                style: textstyle4,
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.amber)),
                            ),
                            kwidth
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
