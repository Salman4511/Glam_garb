import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Application/auth/auth_bloc_bloc.dart';
import 'package:glam_garb/infrastructure/service/auth/auth_repo.dart';
import 'package:glam_garb/presentation/screens/NavBar/nav_bar.dart';
import 'package:glam_garb/presentation/screens/authentication/signup_page.dart';
import 'package:glam_garb/shared/constants/constants.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  bool isloading = false;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    AuthRepo repo = AuthRepo();
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: size.height * 0.09),
      child: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Padding(
            padding:
                EdgeInsets.only(left: 30, right: 30, top: size.height * 0.1),
            child: Column(
              children: [
                // Lottie.network(
                //     'https://lottie.host/a927e874-1e4f-4776-ba71-552d205e9714/galJVLi2L1.json',
                //     repeat: true,
                //     reverse: true,
                //     height: 200,
                //     fit: BoxFit.cover),
                // SizedBox(
                //   height: 150,
                //   width: 200,
                //   child: Image.network(
                //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9Y5YS7_OytcS_zErPHrL-M0U_GZbsChykXiWnzS0b_M9tjyLqwyKY6Ujom9hTANI_BzY&usqp=CAU'),
                // ),
                const Text('Welcome back,',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800),),
                const Text(
                  ' fashionista! ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
               kheight90,
                TextFormField(
                    controller: emailcontroller,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return "Email is Empty";
                      }
                      final emailRegExp =
                          RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

                      if (!emailRegExp.hasMatch(text)) {
                        return 'Invalid Email';
                      }
                      return null;
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      hintText: 'Email ID',
                      hintStyle: const TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      fillColor: Colors.grey.shade900.withOpacity(0.5),
                      focusColor: Colors.white,
                      filled: true,
                    ),
                    onEditingComplete: () {
                      FocusScope.of(context).nextFocus();
                    }),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    controller: passwordcontroller,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return "Password is Empty";
                      }
                      return null;
                    },
                    obscureText: showPassword ? false : true,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.security,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      hintText: 'Password',
                      hintStyle: const TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Colors.grey.shade900.withOpacity(0.5),
                      focusColor: Colors.white,
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        child: Icon(
                          showPassword
                              ? Icons.visibility_off
                              : Icons.remove_red_eye,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onEditingComplete: () {
                      FocusScope.of(context).unfocus();
                    }),
              
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: BlocConsumer<AuthBloc, AuthBlocState>(
                    listener: (context, state) {
                      if (state.loginUser != null) {
                        if (state.loginUser!.token != "") {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return const navPage();
                            },
                          ));
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text("Email or Password Does not Exist"),
                                backgroundColor: Colors.redAccent));
                      }
                    },
                    builder: (context, state) {
                      return state.isLoading
                          ? const CircularProgressIndicator()
                          : ElevatedButton.icon(
                              onPressed: () {
                                if (formkey.currentState!.validate()) {
                                  context.read<AuthBloc>().add(
                                      AuthBlocEvent.signIn(emailcontroller.text,
                                          passwordcontroller.text));

                                  repo.adminSignIn('admin@gmail.com', 'admin@123');
                                }
                              },
                              icon: isloading
                                  ? const Text('')
                                  : const Icon(
                                      Icons.check_circle_outline_outlined,
                                      color: Colors.white,
                                    ),
                              label: isloading
                                  ? const CircularProgressIndicator(
                                      color: Colors.white,
                                      strokeWidth: 2,
                                    )
                                  : const Text(
                                      'Login',
                                      style: TextStyle(color: Colors.white),
                                    ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.grey.shade900)),
                            );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.15,
                  ),
                  child: Row(
                    children: [
                      const Text('Does not have an account?'),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpScreen()));
                          },
                          child: const Text(
                            'SignUp',
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
