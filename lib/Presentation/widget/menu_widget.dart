import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Application/auth/auth_bloc_bloc.dart';
import 'package:glam_garb/infrastructure/service/auth/auth_repo.dart';
import 'package:glam_garb/Presentation/screens/authentication/login_screen.dart';
import 'package:glam_garb/infrastructure/service/profile/profile_repo.dart';
import 'package:glam_garb/presentation/widget/about_us.dart';
import 'package:glam_garb/presentation/widget/privacy_dialog.dart';
import 'package:glam_garb/shared/constants/constants.dart';

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
      child: Column( children: [
        FutureBuilder(
            future: profilerepo.userDetails(),
            builder: (context, snapshot) {
              final user = snapshot.data?.userData;
              return Container(
                color: Colors.black.withOpacity(0.4),
                width: double.infinity,
                height: 180,
                child: Row(
                  children: [
                    kwidth,
                    const CircleAvatar(
                      radius: 35,
                      child: Icon(Icons.person),
                      backgroundColor: kblackcolor,
                    ),
                    kwidth,
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      children: [
                        kheight60,
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
                  ],
                ),
              );
            }),
        // const ListTile(
        //   title: Text('Terms And Conditions'),
        //   leading: Icon(Icons.format_size_rounded),
        // ),
         ListTile(
          title: Text('Privacy Policy'),
          leading: Icon(Icons.policy),
          onTap: (){
           showDialog(
                context: context,
                builder: (context) {
                  return privacydialoge(mdFileName: 'privacy_policy.md');
                });
          },
        ),
        const ListTile(
            title: Text('Help'), leading: Icon(Icons.question_mark_outlined)),
         ListTile(
          title: Text('About Us'),
          leading: Icon(
            Icons.person_pin_circle_outlined,
            size: 28,
          ),
          onTap: (){
            Navigator.push(context,CupertinoPageRoute(builder: (context) => AboutUs(),));
          },
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
