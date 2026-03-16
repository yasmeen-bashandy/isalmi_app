import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_app/core/resourses/colors_manager.dart';
import 'package:islami_app/core/resourses/strings_manager.dart';
import 'package:islami_app/gen/assets.gen.dart';
import 'package:islami_app/ui/home/tabs/hadith/hadith_tab.dart';
import 'package:islami_app/ui/home/tabs/quran/quran_tab.dart';
import 'package:islami_app/ui/home/tabs/radio/radio_tab.dart';
import 'package:islami_app/ui/home/tabs/sabha/sabha_tab.dart';
import 'package:islami_app/ui/home/tabs/time/time_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  //========== routeName for navigation ======
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SabhaTab(),
    RadioTab(),
    TimeTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.black,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        selectedIndex: selectedIndex,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        backgroundColor: ColorsManager.gold,
        indicatorColor: ColorsManager.black.withValues(alpha: 0.6),
        labelTextStyle: WidgetStateTextStyle.resolveWith((states) {
          return TextStyle(
            color: ColorsManager.white,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          );
        }),

        destinations: [
          NavigationDestination(
            selectedIcon: SvgPicture.asset(Assets.images.quranSelected),
            icon: SvgPicture.asset(Assets.images.quran),
            label: StringManager.quranTab,
          ),
          NavigationDestination(
            selectedIcon: SvgPicture.asset(Assets.images.hadithSelected),
            icon: SvgPicture.asset(Assets.images.hadith),
            label: StringManager.hadithTab,
          ),
          NavigationDestination(
            selectedIcon: SvgPicture.asset(Assets.images.sabhaSelected),
            icon: SvgPicture.asset(Assets.images.sabha),
            label: StringManager.sabhaTab,
          ),
          NavigationDestination(
            selectedIcon: SvgPicture.asset(Assets.images.radioSelected),
            icon: SvgPicture.asset(Assets.images.radio),
            label: StringManager.radioTab,
          ),
          NavigationDestination(
            selectedIcon: SvgPicture.asset(Assets.images.timeSelected),
            icon: SvgPicture.asset(Assets.images.time),
            label: StringManager.timeTab,
          ),
        ],
      ),
      body: tabs[selectedIndex],
    );
  }
}
