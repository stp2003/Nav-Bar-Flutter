import 'package:flutter/material.dart';
import 'package:side_nav_bar/sidebar/side_nav_bar.dart';

import '../push_notif_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    PushNotificationService().init();
    super.initState();
  }

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
