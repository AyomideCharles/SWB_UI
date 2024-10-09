import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:softweb_task/views/homepage.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;

  List<Widget> pages = [
    const Homepage(),
    // const Bills(),
    // const Loan(),
    // const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF141414),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.grid_14), label: 'Services'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.arrow_down4), label: 'Statistics'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.profile_2user), label: 'Referrals'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.setting), label: 'Settings'),
          ]),
    );
  }
}
