import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Application/auth/auth_bloc_bloc.dart';
import 'package:glam_garb/Presentation/screens/authentication/login_screen.dart';
import 'package:glam_garb/Presentation/screens/authentication/otp_verification.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formkey = GlobalKey<FormState>();
  bool showPassword = false;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController otpcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: <Widget>[
            // SizedBox(height: 30,),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Hero(
                  tag: kBackBtn,
                  child: Card(
                    elevation: 10,
                    shape: kBackButtonShape,
                    child: MaterialButton(
                      height: 50,
                      minWidth: 50,
                      elevation: 10,
                      shape: kBackButtonShape,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: kBackBtn,
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 50,
                // ),
                Hero(
                  tag: 'title',
                  transitionOnUserGestures: true,
                  child: Card(
                    elevation: 10,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    child: InkWell(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 1.5,
                        height: 50,
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Text(
                              'SignUp',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                // color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Form(
              key: formkey,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 30, right: 30, top: size.height * 0.1),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                              controller: firstnamecontroller,
                              validator: (text) {
                                if (text == null || text.isEmpty) {
                                  return "Name is Empty";
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                // filled: true,
                                fillColor: Color.fromARGB(255, 222, 222, 222),
                                focusColor: Colors.white,
                                hintText: '  First Name',
                                hintStyle: TextStyle(color: Colors.black),
                              ),
                              onEditingComplete: () {
                                FocusScope.of(context).nextFocus();
                              }),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextFormField(
                              controller: lastnamecontroller,
                              validator: (text) {
                                if (text == null || text.isEmpty) {
                                  return "LastName is Empty";
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                fillColor: Color.fromARGB(255, 222, 222, 222),
                                focusColor: Colors.white,
                                hintText: '  Last Name',
                                hintStyle: TextStyle(color: Colors.black),
                              ),
                              onEditingComplete: () {
                                FocusScope.of(context).nextFocus();
                              }),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        controller: emailcontroller,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return "Email is Empty";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                            fillColor: Color.fromARGB(255, 222, 222, 222),
                            focusColor: Colors.white,
                            hintText: 'Email Address',
                            hintStyle: TextStyle(color: Colors.black),
                            prefixIcon: Icon(
                              Icons.app_registration_rounded,
                              color: Colors.black,
                            ),
                            // suffixIcon: BlocConsumer<AuthBloc, AuthBlocState>(
                            //   listener: (context, state) {
                            //     // TODO: implement listener
                            //   },
                            //   builder: (context, state) {
                            //     return TextButton(
                            //         onPressed: () {
                            //           context.read<AuthBloc>().add(
                            //               AuthBlocEvent.otpverification(
                            //                   emailcontroller.text));
                            //         },
                            //         child: const Text('Send OTP'));
                            //   },
                            // ),
                            suffixStyle: TextStyle(color: Colors.black)),
                        onEditingComplete: () {
                          FocusScope.of(context).nextFocus();
                        }),
                    // const SizedBox(
                    //   height: 30,
                    // ),
                    // const Align(
                    //     alignment: Alignment.bottomLeft,
                    //     child: Text(' Enter OTP')),
                    const SizedBox(
                      height: 10,
                    ),
                    // Row(
                    //   children: [
                    //     Expanded(
                    //       child: TextFormField(
                    //           keyboardType: TextInputType.number,
                    //           controller: otpcontroller,
                    //           validator: (text) {
                    //             if (text == null || text.isEmpty) {
                    //               return "enter otp";
                    //             }
                    //             return null;
                    //           },
                    //           decoration: const InputDecoration(
                    //             // filled: true,
                    //             fillColor: Color.fromARGB(255, 222, 222, 222),
                    //             focusColor: Colors.white,
                    //             hintText: '  _   _   _   _   ',
                    //             hintStyle: TextStyle(color: Colors.black),
                    //           ),
                    //           onEditingComplete: () {
                    //             FocusScope.of(context).nextFocus();
                    //           }),
                    //     ),
                    //     const SizedBox(width: 40),
                    //     // Expanded(
                    //     //     child: BlocConsumer<AuthBloc, AuthBlocState>(
                    //     //   listener: (context, state) {
                    //     //     if (state.verifyOtp!=null) {
                    //     //       if(state.verifyOtp!.message!=''){
                    //     //        showDialog(
                    //     //         context: context,
                    //     //         builder: (BuildContext context) {
                    //     //           return AlertDialog(
                    //     //             title: const Text('OTP verified'),
                    //     //             content:
                    //     //                 const Text('Your OTP has been ok.'),
                    //     //             actions: [
                    //     //               TextButton(
                    //     //                 onPressed: () {
                    //     //                   Navigator.of(context)
                    //     //                       .pop(); // Close the dialog
                    //     //                 },
                    //     //                 child: const Text('OK'),
                    //     //               ),
                    //     //             ],
                    //     //           );
                    //     //         },
                    //     //       );
                    //     //       }else if(state.verifyOtp!.message==''){
                    //     //          showDialog(
                    //     //           context: context,
                    //     //           builder: (BuildContext ctx) {
                    //     //             return AlertDialog(
                    //     //               title: const Text('OTP not verified'),
                    //     //               content:
                    //     //                   const Text('Entered OTP is not Valid.'),
                    //     //               actions: [
                    //     //                 TextButton(
                    //     //                   onPressed: () {
                    //     //                     Navigator.of(context)
                    //     //                         .pop(); // Close the dialog
                    //     //                   },
                    //     //                   child: const Text('OK'),
                    //     //                 ),
                    //     //               ],
                    //     //             );
                    //     //           },
                    //     //         );
                    //     //       }
                    //     //     }
                    //     //   },
                    //     //   builder: (context, state) {
                    //     //     return FloatingActionButton(
                    //     //       onPressed: () {
                    //     //          context.read<AuthBloc>().add(
                    //     //             AuthBlocEvent.checkOtp(otpcontroller.text));
                    //     //       },
                    //     //       mini: true,
                    //     //       shape: const RoundedRectangleBorder(
                    //     //         borderRadius:
                    //     //             BorderRadius.all(Radius.circular(16.0)),
                    //     //       ),
                    //     //       child: const Text('Verify'),
                    //     //     );
                    //     //   },
                    //     // )),
                    //   ],
                    // ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        controller: phonecontroller,
                        keyboardType: TextInputType.phone,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return "Phone is Empty";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          fillColor: Color.fromARGB(255, 222, 222, 222),
                          focusColor: Colors.white,
                          hintText: 'Phone',
                          hintStyle: TextStyle(color: Colors.black),
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
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
                        style: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0)),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.security,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          hintText: 'Create Password',
                          hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0)),
                          fillColor: const Color.fromARGB(255, 222, 222, 222),
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
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        onEditingComplete: () {
                          FocusScope.of(context).unfocus();
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    // TextFormField(
                    //     // controller: passwordcontroller,
                    //     validator: (text) {
                    //       if (text == null || text.isEmpty) {
                    //         return "Password is Empty";
                    //       }
                    //       return null;
                    //     },
                    //     obscureText: showPassword ? false : true,
                    //     style: const TextStyle(
                    //         color: Color.fromARGB(255, 0, 0, 0)),
                    //     decoration: InputDecoration(
                    //       prefixIcon: const Icon(
                    //         Icons.security,
                    //         color: Color.fromARGB(255, 0, 0, 0),
                    //       ),
                    //       hintText: 'Confirm Password',
                    //       hintStyle: const TextStyle(
                    //           color: Color.fromARGB(255, 0, 0, 0)),
                    //       fillColor: const Color.fromARGB(255, 222, 222, 222),
                    //       focusColor: Colors.white,
                    //       suffixIcon: InkWell(
                    //         onTap: () {
                    //           setState(() {
                    //             showPassword = !showPassword;
                    //           });
                    //         },
                    //         child: Icon(
                    //           showPassword
                    //               ? Icons.visibility_off
                    //               : Icons.remove_red_eye,
                    //           color: const Color.fromARGB(255, 0, 0, 0),
                    //         ),
                    //       ),
                    //     ),
                    //     onEditingComplete: () {
                    //       FocusScope.of(context).unfocus();
                    //     }),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: BlocConsumer<AuthBloc, AuthBlocState>(
                        listener: (ctx, state) {
                          // if(state.verifyOtp!=null){
                            // if (state.user != null) {
                            //   if (state.user!.name != "") {
                                // if(state.verifyOtp!.message!=""){
                                  
                                    if(state.otp!.message=="Email sent successfully"){
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                     var name=firstnamecontroller.text+lastnamecontroller.text;
                                    return OTPScreen(email: emailcontroller.text, name:name, phone:int.parse(phonecontroller.text), password: passwordcontroller.text,);
                                  },
                                ));
                                  
                                  }
                                  else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text("Email already Used"),
                                      backgroundColor: Colors.redAccent));
                                      
                                  }
                              // } 
                              // else {
                              //   print('invalid otp');
                              // }
                             
                              // }
                              
                        //     }
                           
                        // },
                        },
                        builder: (context, state) {
                          return ElevatedButton.icon(
                          onPressed: () {
                            //  UserPassModel user = UserPassModel(
                            //   email: emailcontroller.text,
                            //   name: firstnamecontroller.text + lastnamecontroller.text,
                            //   phone:int.parse(phonecontroller.text),
                            //   password: passwordcontroller.text
                            //  );
                            //  print(user.name);
                            //  print(user.phone.runtimeType);
                            //  print(user.password);
                            //  print(user.email);
                            if (formkey.currentState!.validate()) {
                              //  context.read<AuthBloc>().add(
                              //       AuthBlocEvent.signUp(name,emailcontroller.text,int.parse(phonecontroller.text),passwordcontroller.text));
                                    // if(state.user!=null){
                                    //   if(state.user!.name!=""){
                                        context.read<AuthBloc>().add(
                                          AuthBlocEvent.otpverification(
                                              emailcontroller.text));
                                    //   }
                                    // }
                               
                                    }
                            
                          },
                          icon: const Icon(
                            Icons.check_circle_outline_outlined,
                            color: Colors.white,
                          ),
                          label: const Text(
                            'Submit',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.grey.shade900)),
                        );
                        },
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.15, top: 0),
                      child: Row(
                        children: [
                          const Text('Already have an account?'),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen()));
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                    decoration: TextDecoration.underline),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

ShapeBorder kBackButtonShape = const RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(30),
  ),
);

Widget kBackBtn = const Icon(
  Icons.arrow_back_ios,
  color: Colors.black54,
);
