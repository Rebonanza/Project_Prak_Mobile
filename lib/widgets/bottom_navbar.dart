import 'package:flutter/material.dart';
import 'package:project_prak_mobile/screens/screens.dart';

class BottomNavbar extends StatelessWidget {
  final int index;
  const BottomNavbar({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withAlpha(100),
        items: [
          BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(left: 50),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                    icon: const Icon(Icons.home)),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Container(
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, DiscoverScreen.routeName);
                    },
                    icon: const Icon(Icons.search)),
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(right: 50),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ProfileScreen.routeName);
                    },
                    icon: const Icon(Icons.person)),
              ),
              label: 'Profile'),
        ]);
  }
}
