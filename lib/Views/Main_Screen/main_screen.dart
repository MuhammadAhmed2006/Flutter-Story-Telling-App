import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_application_1/Views/Chatbot_Screen/chat_screen.dart';
import 'package:flutter_application_1/Views/Explore_Screen/explore_screen.dart';
import 'package:flutter_application_1/Views/Home_Screen/home_screen.dart';
import 'package:flutter_application_1/Views/Main_Screen/Widgets/custom_bottom_navbar.dart';
import 'package:flutter_application_1/Views/Profile_Screen/profile_screen.dart';
import 'package:flutter_application_1/Views/Search_Screen/search_screen.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List screens = [
    HomeScreen(),
    const ExploreScreen(),
    const SearchScreen(),
    ChatScreen(),
    const ProfileScreen()
  ];

  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          child: Opacity(
            key: Key(_currentTab.toString()),
            opacity: 1.0,
            child: screens[_currentTab],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomAppbar(
        unSelectedColor: Colors.grey.shade400,
        selectedColor: bottomnavbarColor,
        onTap: (index) {
          setState(() {
            _currentTab = index;
          });
        },
        selectedTab: _currentTab,
        children: [
          CustomBottomAppBarItem(icon: Iconsax.home, text: "home".tr),
          CustomBottomAppBarItem(
              icon: Icons.explore_outlined, text: "explore".tr),
          // CustomBottomAppBarItem(icon: Iconsax.add_square, text: "Create"),
          CustomBottomAppBarItem(
              icon: Iconsax.search_normal_1, text: "search".tr),
          CustomBottomAppBarItem(icon: Iconsax.message, text: "chat_bot".tr),
          CustomBottomAppBarItem(
              icon: Iconsax.profile_circle, text: "profile".tr),
        ],
      ),
    );
  }
}
