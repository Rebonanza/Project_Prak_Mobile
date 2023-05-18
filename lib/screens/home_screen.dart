import 'package:flutter/material.dart';
import 'package:project_prak_mobile/widgets/bottom_navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = ' /';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(), bottomNavigationBar: BottomNavbar(index: 0));
  }
}
