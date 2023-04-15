import 'package:flutter/material.dart';
import 'package:side_nav_bar/sidebar/side_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const SideNavBar(),
        appBar: AppBar(
          title: const Text(
            'Side Nav Bar',
            style: TextStyle(
              fontFamily: 'poppins_bold',
              letterSpacing: 0.8,
            ),
          ),
          centerTitle: true,
        ),
        body: const Center(),
      ),
    );
  }
}
