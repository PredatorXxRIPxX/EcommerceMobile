import 'package:flutter/material.dart';
import 'package:bottom_bar_page_transition/bottom_bar_page_transition.dart';
import './Profile.dart';
import './Store.dart';
import './Orders.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int indexPage = 0;

  Widget _getBodyIndex(int index) {
    if (index == 0) {
      return const Store();
    } else if (index == 1) {
      return const Orders();
    } else {
      return const Profile();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomBarPageTransition(
        builder: (context, index) => _getBodyIndex(index),
        currentIndex: indexPage,
        totalLength: 3,
        transitionType: TransitionType.slide,
        transitionDuration: const Duration(seconds: 1),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexPage,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            indexPage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: "Shop",
            icon: Icon(Icons.shop_outlined),
          ),
          BottomNavigationBarItem(
            label: "Orders",
            icon: Icon(Icons.badge_outlined),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person_2_outlined),
          ),
        ],
      ),
    );
  }
}
