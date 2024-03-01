import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glam_garb/Presentation/screens/HomeScreen/home_screen.dart';
import 'package:glam_garb/Presentation/screens/cart/cart_screen.dart';
import 'package:glam_garb/Presentation/screens/category/category_screen.dart';
import 'package:glam_garb/Presentation/screens/profile/profile_screen.dart';
import 'package:glam_garb/Presentation/screens/wishlist/wishlist_screen.dart';
import 'package:glam_garb/shared/constants/constants.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

class navPage extends StatefulWidget {
  const navPage({super.key});

  @override
  _navPageState createState() => _navPageState();
}

class _navPageState extends State<navPage> {
  // a variable to store the current selected tab. can be used to control PageView
  int _selectedIndex = 0;

  // PageController to control the pages
  PageController _pageController = PageController(initialPage: 0);

  // Define your pages
  final List<Widget> _pages = [
    const HomeScreen(),
    const CategoryScreen(),
    const ProfileScreen(),
    const WishList(),
    const CartScreen(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
        // primaryColor: Colors.deepPurple[400],
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch:Colors.brown,
          cardColor: Colors.black,
        ),
      ),
      home: Scaffold(
        // backgroundColor: Colors.black,
        body: PageView(
          controller: _pageController,
          children: _pages,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        // backgroundColor: Colors.deepPurple[400],
        // you can use the molten bar in the scaffold's bottomNavigationBar
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
          child: MoltenBottomNavigationBar(
            selectedIndex: _selectedIndex,
            domeHeight: 25,

            borderRaduis: BorderRadius.circular(85),

            // specify what will happen when a tab is clicked
            onTabChange: (clickedIndex) {
              setState(() {
                _selectedIndex = clickedIndex;
              });
              _pageController.animateToPage(
                clickedIndex,
                duration: Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            },
            // ansert as many tabs as you like
            tabs: [
              MoltenTab(
                icon: Icon(
                  Icons.home,
                  size: 35,
                ),
              ),
              MoltenTab(
                icon: Icon(
                  Icons.category_outlined,
                  size: 35,
                ),
                // title: Text('home'),
              ),
              MoltenTab(
                icon: Icon(
                  FontAwesomeIcons.user,
                  size: 35,
                ),
              ),
              MoltenTab(
                icon: Icon(FontAwesomeIcons.heart, size: 30),
                // title: Text('home'),
              ),
              MoltenTab(
                icon: Icon(
                  Icons.shopping_cart_rounded,
                  size: 35,
                ),
                // title: Text('home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
