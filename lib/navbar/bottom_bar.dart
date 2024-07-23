import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:libraloan/activity_request.dart';
import 'package:libraloan/categories.dart';
import 'package:libraloan/homepage.dart';
import 'package:libraloan/popular.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> buildScreens() {
      return [
        const HomePage(),
        const MyActivityRequest(),
        const Categories(),
        const Popular(),
      ];
    }

    List<PersistentBottomNavBarItem> navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(
            CupertinoIcons.home,
            size: 30,
          ),
          activeColorPrimary: const Color(0xFF222222),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            CupertinoIcons.bookmark,
            size: 30,
          ),
          activeColorPrimary: const Color(0xFF222222),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.category_outlined,
            size: 30,
          ),
          activeColorPrimary: const Color(0xFF222222),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.favorite_border_outlined,
            size: 30,
          ),
          activeColorPrimary: const Color(0xFF222222),
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
      ];
    }

    PersistentTabController controller =
        PersistentTabController(initialIndex: 0);

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F8FE),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 50,
              blurRadius: 7,
              offset: const Offset(0, -10))
        ],
      ),
      child: PersistentTabView(
        context,
        controller: controller,
        screens: buildScreens(),
        items: navBarsItems(),
        confineInSafeArea: true,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 10,
                blurRadius: 4,
                offset: const Offset(0, 3))
          ],
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style6,
        navBarHeight: 80,
      ),
    );
  }
}
