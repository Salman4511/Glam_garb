import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/application/profile/profile_bloc.dart';
import 'package:glam_garb/domain/response_models/profile_model/address_get_model/address_get_model.dart';
import 'package:glam_garb/infrastructure/service/profile/profile_repo.dart';
import 'package:glam_garb/presentation/screens/profile/address/add_address.dart';
import 'package:glam_garb/presentation/screens/profile/address/edit_address.dart';
import 'package:glam_garb/shared/constants/constants.dart';

class ManageAddressScreen extends StatefulWidget {
  const ManageAddressScreen({super.key});

  @override
  State<ManageAddressScreen> createState() => _ManageAddressScreenState();
}

class _ManageAddressScreenState extends State<ManageAddressScreen> {
  @override
  Widget build(BuildContext context) {
    ProfileRepo repo = ProfileRepo();
    return Scaffold(
      backgroundColor: kblackcolor,
      appBar: AppBar(
        backgroundColor: kblackcolor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
          color: kwhite,
        ),
        title: Text(
          'Manage Address',
          style: textstyle3,
        ),
      ),
      body: Stack(
        children: [
          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return FutureBuilder<AddressGetModel>(
                future: repo.getAddress(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (!snapshot.hasData ||
                      snapshot.data?.userData == null) {
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
                                setState(() {});
                              },
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      kheight,
                                      Row(
                                        children: [
                                          Text(
                                            userData[0].address![index].name ??
                                                '',
                                            style: textstyle4,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '${userData[0].address![index].housename}, ${userData[0].address![index].area!}, ${userData[0].address![index].city!}',
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                              '${userData[0].address![index].state} ${userData[0].address![index].pincode}'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                              'Mobile: ${userData[0].address![index].mobile}'),
                                        ],
                                      ),
                                      kheight,
                                      Row(
                                        children: [
                                          Spacer(),
                                          IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          UpdateAddressScreen(
                                                        name: userData[0]
                                                                .address![index]
                                                                .name ??
                                                            '',
                                                        houseName: userData[0]
                                                                .address![index]
                                                                .housename ??
                                                            '',
                                                        area: userData[0]
                                                                .address![index]
                                                                .area ??
                                                            '',
                                                        mobile: userData[0]
                                                                .address![index]
                                                                .mobile ??
                                                            0,
                                                        city: userData[0]
                                                                .address![index]
                                                                .city ??
                                                            '',
                                                        state: userData[0]
                                                                .address![index]
                                                                .state ??
                                                            '',
                                                        pinCode: userData[0]
                                                                .address![index]
                                                                .pincode ??
                                                            0,
                                                        id: userData[0]
                                                                .address![index]
                                                                .id ??
                                                            '',
                                                      ),
                                                    ));
                                              },
                                              icon: Icon(Icons.edit)),
                                          IconButton(
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (BuildContext context) {
                                                  return AlertDialog(
                                                    title: Text("Confirm Delete"),
                                                    content: Text(
                                                        "Are you sure you want to delete this address?"),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context); // Close the dialog
                                                        },
                                                        child: Text("Cancel"),
                                                      ),
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context); // Close the dialog
                                                          context
                                                              .read<ProfileBloc>()
                                                              .add(ProfileEvent
                                                                  .delAddress(
                                                                      userData[0]
                                                                          .address![
                                                                              index]
                                                                          .id!));
                                                        },
                                                        child: Text("Confirm"),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                            icon: Icon(Icons.delete_forever),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          } else {
                            return kheight;
                          }
                        });
                  }
                },
              );
            },
          ),
          Positioned(
              top: 600,
              left: 120,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddAddressScreen(),
                      ));
                },
                child: Text(
                  'Add Address',
                  style: textstyle3,
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.amber)),
              )),
        ],
      ),
    );
  }
}
