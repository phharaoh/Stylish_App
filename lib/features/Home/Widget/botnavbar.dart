import '../Views/home_view.dart';
import '../Views/items_view.dart';
import 'package:flutter/material.dart';
import 'package:stylish_app/core/styles/colors.dart';
import 'package:stylish_app/features/Profile/Views/profile_view.dart';

class HomeNavBar extends StatefulWidget {
  const HomeNavBar({super.key});

  @override
  State<HomeNavBar> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeView(),
    const ItemsView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Items',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_sharp),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (indix) {
          setState(() {
            _currentIndex = indix;
          });
        },
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.black,
      ),
    );
  }
}
