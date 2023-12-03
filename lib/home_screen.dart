import 'package:bcc_wheather_app/settings/settings.dart';
import 'package:bcc_wheather_app/utils.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'animal/animals_screen.dart';
import 'weather/city_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final _myController = TextEditingController();
  int tabIndex = 0;
  late TabController tabController;
  final pages = [
    const CityPage(),
    const AnimalsPage(),
    const SettingsPage(),
  ];

  @override
  void initState() {
    tabController = TabController(
      initialIndex: tabIndex,
      length: pages.length,
      vsync: this,
    );
    tabController.addListener(() {
      setState(() {
        tabIndex = tabController.index;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _myController.dispose();
    super.dispose();
  }

  void changeTabIndex(int index) {
    setState(() {
      tabIndex = index;
    });
    tabController.animateTo(tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: pages.length,
        child: ScaffoldMessenger(
            key: globalKey,
            child: Scaffold(
              body: SafeArea(
                  child: TabBarView(
                controller: tabController,
                children: pages,
              )),
              bottomNavigationBar: NavigationBar(
                onDestinationSelected: (int index) => changeTabIndex(index),
                selectedIndex: tabIndex,
                destinations: const [
                  NavigationDestination(
                      icon: Icon(Iconsax.house), label: "home"),
                  NavigationDestination(
                      icon: Icon(Iconsax.edit), label: "animals"),
                  NavigationDestination(
                      icon: Icon(Iconsax.settings), label: "settings"),
                ],
              ),
            )));
  }
}
