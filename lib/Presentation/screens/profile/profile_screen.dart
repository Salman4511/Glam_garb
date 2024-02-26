import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Application/auth/auth_bloc_bloc.dart';
import 'package:glam_garb/Infrastructure/service/auth/auth_repo.dart';
import 'package:glam_garb/Presentation/screens/authentication/login_screen.dart';
import 'package:glam_garb/presentation/screens/profile/address/manage_address_screen.dart';
import 'package:glam_garb/presentation/screens/profile/coupons/coupons.dart';
import 'package:glam_garb/presentation/screens/profile/my_orders/my_orders_screen.dart';
import 'package:glam_garb/presentation/screens/profile/password/change_password.dart';
import 'package:glam_garb/presentation/screens/profile/wallet/wallet_screen.dart';
import 'package:glam_garb/presentation/screens/profile/widgets/clickable_tile_widget.dart';
import 'package:glam_garb/presentation/screens/profile/widgets/uder_details_dialog_widget.dart';
import 'package:glam_garb/shared/constants/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthRepo repo = AuthRepo();
    return Scaffold(
      backgroundColor: kblackcolor,
      body: SafeArea(
        child: Center(
          child: Container(
            // height: 650,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                kheight50,
                Row(
                  children: [
                    kwidth,
                    Text(
                      ' Profile',
                      style: textstyle1,
                    ),
                  ],
                ),
                Row(
                  children: [
                    kwidth,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClickableTile(
                            title: 'Personal Information',
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => PersonalInfoDialog(),
                              );
                            }),
                        ClickableTile(
                            title: 'Manage Address',
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ManageAddressScreen(),
                                  ));
                            }),
                        ClickableTile(
                            title: 'My Wallet',
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Wallet(),
                                  ));
                            }),
                        ClickableTile(
                            title: 'Coupons',
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CouponsScreen(),
                                  ));
                            }),
                        ClickableTile(
                            title: 'Change Password',
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ChangePasswordScreen(),
                                  ));
                            })
                      ],
                    ),
                  ],
                ),
                kheight50,
                Row(
                  children: [
                    kwidth,
                    Text(
                      ' Orders',
                      style: textstyle1,
                    ),
                  ],
                ),
                Row(
                  children: [
                    kwidth,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClickableTile(
                            title: 'My Orders',
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyOrderScreen(),
                                  ));
                            })
                      ],
                    ),
                  ],
                ),
                const Divider(),
                kheight20,
                ElevatedButton.icon(
                  onPressed: () {
                     showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Logout',style: TextStyle(color: Colors.red)),
                          content:
                              const Text('Are you Sure,You Want to Logout.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                              },
                              child: Text('Cancel'),
                            ),
                            BlocConsumer<AuthBloc, AuthBlocState>(
                              listener: (context, state) {
                                if (state.logout!.message != "") {
                                  repo.clearAuthId();
                                  Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()),
                                    (route) => false,
                                  );
                                }
                              },
                              builder: (context, state) {
                                return TextButton(
                                  onPressed: () {
                                    context
                                        .read<AuthBloc>()
                                        .add(AuthBlocEvent.logOut());
                                  },
                                  child: const Text(
                                    'Logout',
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.power_settings_new,
                    color: kwhite,
                  ),
                  label: Text(
                    'Logout',
                    style: textstyle3,
                  ),
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
