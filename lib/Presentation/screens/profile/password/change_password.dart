import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Shared/constants/constants.dart';
import 'package:glam_garb/application/profile/profile_bloc.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  // void _handleChangePassword() {
  //   // Get the entered passwords
  //   String newPassword = _newPasswordController.text;
  //   String confirmPassword = _confirmPasswordController.text;

  //   // Validate and process password change
  //   if (newPassword.isNotEmpty && confirmPassword.isNotEmpty) {
  //     if (newPassword == confirmPassword) {
  //       // Change password logic here
  //       // You may want to call a function or make an API request to update the password
  //       // Display success or error messages accordingly

  //       ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(
  //           content: Text('Password changed successfully!'),
  //         ),
  //       );
  //     } else {
  //       // Passwords do not match, show an error message
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(
  //           content: Text('New password and confirm password do not match.'),
  //         ),
  //       );
  //     }
  //   } else {
  //     // Either new password or confirm password is empty, show an error message
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(
  //         content: Text('Please enter both new password and confirm password.'),
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblackcolor,
      appBar: AppBar(
        backgroundColor: kblackcolor,
        title: Text('Change Password', style: textstyleTitle),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter the fields to',
              style: textstyle3,
            ),
            Text(
              'Change your password...',
              style: textstyle3,
            ),
            kheight50,
            TextField(
              controller: _newPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'New Password',
                  fillColor: kwhite,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
            kheight,
            TextField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  fillColor: kwhite,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
            const SizedBox(height: 16.0),
            BlocConsumer<ProfileBloc, ProfileState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      String newPassword = _newPasswordController.text;
                      String confirmPassword = _confirmPasswordController.text;
                      if (newPassword.isNotEmpty && confirmPassword.isNotEmpty) {
                        if (newPassword == confirmPassword) {
                          context
                              .read<ProfileBloc>()
                              .add(ProfileEvent.changePwd(newPassword));
                
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Password changed successfully!'),
                              backgroundColor: Colors.blue,
                            ),
                          );
                          Navigator.pop(context);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  'New password and confirm password do not match.'),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'Please enter both new password and confirm password.'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
                    child: Text(
                      'Change Password',
                      style: textstyle3,
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.amber)),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
