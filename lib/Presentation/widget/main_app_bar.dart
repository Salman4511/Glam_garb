import 'package:flutter/material.dart';
import 'package:glam_garb/Presentation/widget/menu_widget.dart';

// ignore: camel_case_types
class Main_app_bar extends StatefulWidget {
  const Main_app_bar({
    super.key,
  });
  @override
  State<Main_app_bar> createState() => _Main_app_barState();
}

// ignore: camel_case_types
class _Main_app_barState extends State<Main_app_bar> {
  void _openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // const Text('''Elevate Your Style,
        // Embrace Your Individuality.''',
        // style: TextStyle(
        //   color: kwhite,fontSize: 20,fontWeight: FontWeight.bold
        // ),),
        Container(
          width: 80,
          height: 70,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/Orange Black Minimalist Modern Letter G Giant Creative Logo.png'))),
        ),
        const Spacer(),
        InkWell(
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/7543183.png'))),
          ),
          onTap: () {
            _openDrawer(context);
          },
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
        //     return IconButton(
        //         onPressed: () {
        //           context.read<AuthBloc>().add(AuthBlocEvent.logOut());
        //         },
        //         icon: Icon(
        //           Icons.logout,
        //           color: Colors.white,
        //         ));
        //   },
        // ),
      ],
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          alignment: Alignment.topRight, // Align the container to the right
          color: Colors.blue, // Set the background color
          width: 250, // Set the width of the drawer
          child: MenuWidget(),
        ),
      ),
    );
  }
}
