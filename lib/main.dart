import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Application/auth/auth_bloc_bloc.dart';
import 'package:glam_garb/Application/cart/cart_bloc.dart';
import 'package:glam_garb/Application/category/category_bloc.dart';
import 'package:glam_garb/Application/wishlist/wishlist_bloc.dart';
import 'package:glam_garb/Infrastructure/service/auth/auth_repo.dart';
import 'package:glam_garb/Infrastructure/service/cart/cart_repo.dart';
import 'package:glam_garb/Infrastructure/service/category/category_repo.dart';
import 'package:glam_garb/Infrastructure/service/wishlist/wishlist_repo.dart';
import 'package:glam_garb/Presentation/screens/SplashScreen/splash_screen.dart';
import 'package:glam_garb/application/checkOut/check_out_bloc.dart';
import 'package:glam_garb/application/coupon/coupon_bloc.dart';
import 'package:glam_garb/application/place_order/place_order_bloc.dart';
import 'package:glam_garb/application/profile/profile_bloc.dart';
import 'package:glam_garb/infrastructure/service/checkOut/check_out_repo.dart';
import 'package:glam_garb/infrastructure/service/profile/profile_repo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final repo = AuthRepo();
  final wishListrepo = WishListRepo();
  final cartRepo = CartRepo();
  final categoryRepo = CategoryRepo();
  final checkOutRepo = CheckOutRepo();
  final profileRepo = ProfileRepo();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(repo),
        ),
        BlocProvider(
          create: (context) => WishlistBloc(wishListrepo),
        ),
        BlocProvider(
          create: (context) => CartBloc(cartRepo),
        ),
        BlocProvider(
          create: (context) => CategoryBloc(categoryRepo),
        ),
        BlocProvider(
          create: (context) => CheckOutBloc(checkOutRepo),
        ),
        BlocProvider(
          create: (context) => CouponBloc(checkOutRepo),
        ),
        BlocProvider(
          create: (context) => PlaceOrderBloc(checkOutRepo),
        ),
        BlocProvider(
          create: (context) => ProfileBloc(profileRepo),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: splashscreen(),
      ),
    );
  }
}
