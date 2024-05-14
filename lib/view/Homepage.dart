import 'package:flutter/material.dart';
import 'package:bottom_bar_page_transition/bottom_bar_page_transition.dart';
import './Profile.dart';
import './Orders.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late int indexPage = 0;
  late String searchBar;
  @override
  Widget build(BuildContext context) {
    Widget _getBodyIndex(int index) {
      if (index == 0) {
        return CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              centerTitle: true,
              title: Container(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 00, horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey[200],
                  ),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: "search",
                      hintStyle: TextStyle(color: Colors.grey),
                      focusColor: Colors.transparent,
                      fillColor: Colors.transparent,
                    ),
                    onChanged: (value) {
                      setState(() {
                        searchBar = value;
                      });
                    },
                  ),
                ),
              ),
              titleSpacing: 2.0,
              actions: const [
                Icon(
                  Icons.notifications,
                  color: Colors.deepPurple,
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SliverFillRemaining(
              child: Center(
                child: Text('hello $index'),
              ),
            )
          ],
        );
      } else if (index == 1) {
        return Orders();
      } else {
        return Profile();
      }
    }

    return Scaffold(
      /*appBar: AppBar(
        centerTitle: true,
        title: Container(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 00, horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey[200],
            ),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                hintText: "search",
                hintStyle: TextStyle(color: Colors.grey),
                focusColor: Colors.transparent,
                fillColor: Colors.transparent,
              ),
              onChanged: (value) {
                setState(() {
                  searchBar = value;
                });
              },
            ),
          ),
        ),
        titleSpacing: 2.0,
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.deepPurple,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),*/
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
          indexPage = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
              label: "Shop", icon: Icon(Icons.shop_outlined)),
          BottomNavigationBarItem(
              label: "Orders", icon: Icon(Icons.badge_outlined)),
          BottomNavigationBarItem(
              label: "Profile", icon: Icon(Icons.person_2_outlined)),
        ],
      ),
    );
  }
}
