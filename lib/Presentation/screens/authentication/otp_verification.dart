// ignore_for_file: deprecated_member_use

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Application/auth/auth_bloc_bloc.dart';
import 'package:glam_garb/Presentation/screens/NavBar/nav_bar.dart';

import 'package:glam_garb/Shared/constants/constants.dart';
import 'package:glam_garb/presentation/screens/authentication/login_screen.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({
    super.key,
    required this.email,
    required this.name,
    required this.phone,
    required this.password,
  });
  final String email;
  final String name;
  final int phone;
  final String password;

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController otpcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(),
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.white,
            //  withOpacity(0.9),
            Colors.transparent,
            // Colors.black.withOpacity(0.4),
            Colors.black,
            // withOpacity(0.6)
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 55,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          
                          widget.email,
                          style: TextStyle(color: kwhite, fontSize: 16),
                          overflow: TextOverflow.ellipsis,
                        ),
                        BlocConsumer<AuthBloc, AuthBlocState>(
                          listener: (context, state) {
                            // TODO: implement listener
                          },
                          builder: (context, state) {
                            return ElevatedButton(
                              onPressed: () {
                                context.read<AuthBloc>().add(
                                    AuthBlocEvent.otpverification(
                                        widget.email));
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 0, 0, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: SizedBox(
                                  height: 20,
                                  width: 49,
                                  child: Center(
                                    child: Text(
                                      'RESEND',
                                      style: TextStyle(
                                          fontSize: 11.0,
                                          color: kwhite,
                                          letterSpacing: 1),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Chech your Mail',
                      style: TextStyle(
                          color: kwhite,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                          wordSpacing: 2),
                    ),
                    const Text(
                      "We've sent the code to your mail",
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Row(
                      children: [
                        Row(
                          children: [
                            Pinput(
                              length: 4,
                              controller: otpcontroller,
                              onChanged: (value) {
                                // Code to execute when there is a change in the entered values
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    //  Align(alignment: Alignment.center,
                    //  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    //    children: [
                    //      Text("did't get the OTP  ",style: TextStyle(color: kwhite),),
                    //       InkWell(onTap: () {

                    //       },
                    //         child: Text("RESEND !",style: TextStyle(color: kblack ,fontSize: 17,fontWeight: FontWeight.bold),)),
                    //    ],
                    //  ),

                    //  ),

                    SizedBox(height: 415),
                    Align(
                        alignment: Alignment.centerRight,
                        child: BlocConsumer<AuthBloc, AuthBlocState>(
                          listener: (context, state) {
                            if (state.verifyOtp != null&&state.user!=null) {
                              if (state.verifyOtp!.message != "") {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return const LoginScreen();
                                  },
                                ));
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text('Enter valid Otp'),
                                  backgroundColor: Colors.red,
                                ));
                              }
                            }
                            //    if(state.user!=null&&state.verifyOtp!.message==""){
                            //     showDialog(
                            //             context: context,
                            //             builder: (context) => AlertDialog(
                            //                 title: Text('Error'),
                            //                 content: Text('invalid otp and email'),
                            //                 actions: <Widget>[
                            //                   FloatingActionButton(
                            //                     onPressed: () {
                            //                       Navigator.pop(context);
                            //                     },
                            //                     child: Icon(Icons.close),
                            //                   )
                            //                 ]),
                            //           );
                            //    }
                            //  else if (state.verifyOtp!.message=="") {
                            //    showDialog(context: context,
                            //    builder:(context) => AlertDialog(
                            //     title: Text('Error'),
                            //     content:Text('invalid otp'),
                            //     actions: <Widget>[
                            //     FloatingActionButton(onPressed: (){
                            //       Navigator.pop(context);
                            //     },
                            //     child: Icon(Icons.close),)
                            //     ]
                            //    ), );
                            //  }
                            //  else if(state.user!=null){
                            //    showDialog(context: context,
                            //    builder:(context) => AlertDialog(
                            //     title: Text('Error'),
                            //     content:Text('email or phone is already used'),
                            //     actions: <Widget>[
                            //     FloatingActionButton(onPressed: (){
                            //       Navigator.pop(context);
                            //     },
                            //     child: Icon(Icons.close),)
                            //     ]
                            //    ), );
                            //  }
                          },
                          builder: (context, state) {
                            return ElevatedButton(
                              onPressed: () {
                                if (otpcontroller.text.length == 4) {
                                  context.read<AuthBloc>().add(
                                      AuthBlocEvent.checkOtp(
                                          otpcontroller.text));
                                  if (state.verifyOtp!.message != "Invalid OTP") {
                                    print('entered inside');
                                    context.read<AuthBloc>().add(
                                        AuthBlocEvent.signUp(
                                            widget.name,
                                            widget.email,
                                            widget.phone,
                                            widget.password));
                                  }
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Please enter all fields!'),
                                    ),
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: SizedBox(
                                  height: 30,
                                  width: 80,
                                  child: Center(
                                    child: Text(
                                      'Continue',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: kwhite,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        )),
                  ],
                ),
              ),
              Positioned(
                  top: 50,
                  left: 15,
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            CupertinoIcons.back,
                            color: kwhite,
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      //Text('Go Back',style: TextStyle(fontSize: 17,color: Colors.white54),),
                      // SizedBox(width: 150,),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
