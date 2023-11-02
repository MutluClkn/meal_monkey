import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_extension.dart';
import 'package:meal_monkey/common_widget/tab_button.dart';
import 'package:meal_monkey/view/home/home_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectedTab = 2;
  PageStorageBucket pageStorageBckt = PageStorageBucket();
  Widget selectPageView = const HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: pageStorageBckt, child: selectPageView),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {
            if (selectedTab != 2) {
              selectedTab = 2;
              selectPageView = const HomeView();
            }
            if (mounted) {
              setState(() {});
            }
          },
          shape: const CircleBorder(),
          backgroundColor:
              selectedTab == 2 ? TColor.primary : TColor.placeholder,
          child: Image.asset(
            'assets/images/tab_home.png',
            width: 30,
            height: 30,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          surfaceTintColor: TColor.white,
          shadowColor: Colors.black,
          elevation: 1,
          notchMargin: 12,
          height: 64,
          shape: const CircularNotchedRectangle(),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TabButton(
                  title: 'Menu',
                  image: 'assets/images/tab_menu.png',
                  isSelected: selectedTab == 0,
                  onTap: () {
                    if (selectedTab != 0) {
                      selectedTab = 0;
                      selectPageView = Container();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                ),
                TabButton(
                  title: 'Offer',
                  image: 'assets/images/tab_offer.png',
                  isSelected: selectedTab == 1,
                  onTap: () {
                    if (selectedTab != 1) {
                      selectedTab = 1;
                      selectPageView = Container();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                ),
                const SizedBox(
                  height: 40,
                  width: 40,
                ),
                TabButton(
                  title: 'Profile',
                  image: 'assets/images/tab_profile.png',
                  isSelected: selectedTab == 3,
                  onTap: () {
                    if (selectedTab != 3) {
                      selectedTab = 3;
                      selectPageView = Container();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                ),
                TabButton(
                  title: 'More',
                  image: 'assets/images/tab_more.png',
                  isSelected: selectedTab == 4,
                  onTap: () {
                    if (selectedTab != 4) {
                      selectedTab = 4;
                      selectPageView = Container();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                ),
              ],
            ),
          )),
    );
  }
}
