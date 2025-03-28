import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_estate_app/presentation/styles/app_color_extension.dart';

import '../../../utils/enums.dart';
import 'components/bottom_nav_widget.dart';
import 'pages/__export__.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomePages _currentActiveTab = HomePages.home;

  void changeActiveTab(HomePages newPage) {

    setState(() {
      _currentActiveTab = newPage;
    });
  }

  final List<Widget> pages = [
    const SearchPage(),
    const MessagePage(),
    const HomePage(),
    const FavouritePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final appColorExtension = Theme.of(context).extension<AppColorExtension>()!;

    return Scaffold(
      body: pages[_currentActiveTab.index],
      extendBody: true,
      bottomNavigationBar: Container(
        height: 57.h,
        margin: const EdgeInsets.only(
          left: 50,
          right: 50,
          bottom: 35,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 6,),
        decoration: BoxDecoration(
          color: appColorExtension.backgroundTertiary2,
          boxShadow: [
            BoxShadow(
              blurRadius: 55,
              color: Colors.black.withOpacity(0.15),
            ),
            BoxShadow(
              blurRadius: 100,
              color: Colors.black.withOpacity(0.15),
            ),
          ],
          borderRadius: BorderRadius.circular(45),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavWidget(
              isSelected: _currentActiveTab == HomePages.search,
              activeIconUrl: "ic_search",
              inactiveIconUrl: "ic_search",
              onTap: () {
                changeActiveTab(HomePages.search);
              },
            ),
            BottomNavWidget(
              isSelected: _currentActiveTab == HomePages.message,
              activeIconUrl: "ic_message",
              inactiveIconUrl: "ic_message",
              onTap: () {
                changeActiveTab(HomePages.message);
              },
            ),
            BottomNavWidget(
              isSelected: _currentActiveTab == HomePages.home,
              activeIconUrl: "ic_home",
              inactiveIconUrl: "ic_home_inactive",
              onTap: () {
                changeActiveTab(HomePages.home);
              },
            ),
            BottomNavWidget(
              isSelected: _currentActiveTab == HomePages.favourite,
              activeIconUrl: "ic_favourite",
              inactiveIconUrl: "ic_favourite",
              onTap: () {
                changeActiveTab(HomePages.favourite);
              },
            ),
            BottomNavWidget(
              isSelected: _currentActiveTab == HomePages.profile,
              activeIconUrl: "ic_profile",
              inactiveIconUrl: "ic_profile",
              onTap: () {
                changeActiveTab(HomePages.profile);
              },
            ),
          ],
        ),
      )
          .animate(
            delay: const Duration(seconds: 1) * 1.8,
          )
          .slideY(
            begin: 1,
            end: 0,
            curve: Curves.easeOut,
            duration: const Duration(seconds: 1),
          ),
    );
  }
}
