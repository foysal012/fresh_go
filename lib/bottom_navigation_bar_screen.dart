import 'package:flutter/material.dart';
import 'package:fresh_go/bookmark_screen.dart';
import 'package:fresh_go/order_screen.dart';
import 'package:fresh_go/profile_screen.dart';
import 'home_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

  final List<Widget> screens = [
    HomeScreen(),
    OrderScreen(),
    BookmarkScreen(),
    ProfileScreen(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff4FAF5A),
          selectedLabelStyle: TextStyle(
            fontSize: 16.0,
            color: Color(0xff4FAF5A),
          ),

          unselectedItemColor: Colors.black38,
          unselectedLabelStyle: TextStyle(
              color: Colors.black38,
              fontSize: 16
          ),
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined),
                label: 'Orders'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_add),
                label: 'Bookmark'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile'
            ),
          ]
      ),
    );
  }
}
