import 'package:flutter/material.dart';
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
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Text'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Text')
      ]),
    );
  }
}
