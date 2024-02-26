import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Application/auth/auth_bloc_bloc.dart';
import 'package:glam_garb/infrastructure/service/auth/auth_repo.dart';
import 'package:glam_garb/Presentation/screens/authentication/login_screen.dart';
import 'package:glam_garb/infrastructure/service/profile/profile_repo.dart';

class MenuWidget extends StatelessWidget {
  final Function(String)? onItemClick;

  MenuWidget({Key? key, this.onItemClick}) : super(key: key);
  late final AuthRepo repo = AuthRepo();
  @override
  Widget build(BuildContext context) {
    ProfileRepo profilerepo = ProfileRepo();
    return Container(
      color: Colors.white,
      // padding: const EdgeInsets.only(top: 50),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        FutureBuilder(
            future: profilerepo.userDetails(),
            builder: (context, snapshot) {
              final user = snapshot.data?.userData;
              return Container(
                color: Colors.black.withOpacity(0.4),
                width: double.infinity,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      user![0].name ?? 'user',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      user[0].email ?? '',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              );
            }),
        const ListTile(
          title: Text('Terms And Conditions'),
          leading: Icon(Icons.format_size_rounded),
        ),
        const ListTile(
          title: Text('Privacy Policy'),
          leading: Icon(Icons.policy),
        ),
        const ListTile(
            title: Text('Help'), leading: Icon(Icons.question_mark_outlined)),
        const ListTile(
          title: Text('About Us'),
          leading: Icon(
            Icons.person_pin_circle_outlined,
            size: 28,
          ),
        ),
        const Spacer(),
        OutlinedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Logout'),
                  content: const Text('Are you Sure,You Want to Logout.'),
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
          child: Text(
            'Logout',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.red.shade500),
          ),
        ),
        // BlocConsumer<AuthBloc, AuthBlocState>(
        //   listener: (context, state) {
        //     if (state.logout!.message != "") {
        //       repo.clearAuthId();
        //       Navigator.of(context).pushAndRemoveUntil(
        //         MaterialPageRoute(builder: (context) => LoginScreen()),
        //         (route) => false,
        //       );
        //     }
        //   },
        //   builder: (context, state) {
        //     return OutlinedButton(
        //       onPressed: () {
        //         context.read<AuthBloc>().add(AuthBlocEvent.logOut());
        //       },
        //       child: Text(
        //         'Logout',
        //         style: TextStyle(color: Colors.white, fontSize: 18),
        //       ),
        //       style: ButtonStyle(
        //         backgroundColor:
        //             MaterialStateProperty.all<Color>(Colors.red.shade500),
        //       ),
        //     );
        //   },
        // ),
        const SizedBox(
          height: 20,
        )
      ]),
    );
  }

  Widget sliderItem(String title, IconData icons) => ListTile(
      title: Text(
        title,
        style:
            TextStyle(color: Colors.black, fontFamily: 'BalsamiqSans_Regular'),
      ),
      leading: Icon(
        icons,
        color: Colors.black,
      ),
      onTap: () {
        onItemClick!(title);
      });
}
