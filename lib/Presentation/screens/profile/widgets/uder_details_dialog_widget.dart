import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/application/profile/profile_bloc.dart';
import 'package:glam_garb/domain/response_models/profile_model/my_account_model/my_account_model.dart';
import 'package:glam_garb/infrastructure/service/profile/profile_repo.dart';
import 'package:glam_garb/shared/constants/constants.dart';

class PersonalInfoDialog extends StatefulWidget {
  const PersonalInfoDialog({
    super.key,
  });

  @override
  State<PersonalInfoDialog> createState() => _PersonalInfoDialogState();
}

class _PersonalInfoDialogState extends State<PersonalInfoDialog> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  bool isEditing = false;

  @override
  Widget build(BuildContext context) {
    ProfileRepo repo = ProfileRepo();
    return FutureBuilder<MyAccountModel>(
      future: repo.userDetails(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData) {
          return Center(
            child: Text(
              'No items found.',
              style: textstyleWhite,
            ),
          );
        } else {
          final user = snapshot.data!;
          return AlertDialog(
            title: !isEditing
                ? const Text('Personal Information')
                : const Text('Edit Profile'),
            content: isEditing
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                        TextField(
                          style: const TextStyle(),
                          controller: nameController,
                          decoration: const InputDecoration(
                            labelText: 'Name',
                          ),
                        ),
                        TextField(
                          style: const TextStyle(),
                          controller: mobileController,
                          decoration: const InputDecoration(
                            labelText: 'Mobile',
                          ),
                        ),
                      ])
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Name: ${user.userData![0].name ?? ""}'),
                      Text('Mobile: ${user.userData![0].phone ?? ""}'),
                      Text('Email: ${user.userData![0].email ?? ""}'),
                    ],
                  ),
            actions: [
              !isEditing
                  ? TextButton(
                      onPressed: () {
                        setState(() {
                          isEditing = true;
                          nameController.text = user.userData![0].name ?? "";
                          mobileController.text =
                              user.userData![0].phone.toString();
                        });
                      },
                      child: const Text('Edit'),
                    )
                  : BlocConsumer<ProfileBloc, ProfileState>(
                      listener: (context, state) {},
                      builder: (context, state) {
                        return TextButton(
                            onPressed: () {
                              context.read<ProfileBloc>().add(
                                  ProfileEvent.userUpdate(nameController.text,
                                      int.tryParse(mobileController.text)));
                              Navigator.pop(context);
                            },
                            child: const Text('Confirm'));
                      },
                    ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Close'),
              ),
            ],
          );
        }
      },
    );
  }
}
