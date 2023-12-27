import 'package:flutter/material.dart';
import 'package:multi_food/utils/color_extension.dart';
import 'package:multi_food/views/screens/bookmark/bookmark_screen.dart';
import 'package:multi_food/views/screens/discovery/discovery_screen.dart';
import 'package:multi_food/views/screens/home/home_screen.dart';
import 'package:multi_food/views/screens/my_profile/my_profile_screen.dart';
import 'package:multi_food/views/screens/top_foodie/top_foodie_screen.dart';

class MainTabScreen extends StatefulWidget {
  const MainTabScreen({super.key});

  @override
  State<MainTabScreen> createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen>
    with TickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    controller = TabController(length: 5, vsync: this);
    controller?.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: const [
          HomeScreen(),
          DiscoveryScreen(),
          BookmarkScreen(),
          TopFoodieScreen(),
          MyProfileScreen()
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
            controller: controller,
            labelColor: TColor.primary,
            labelPadding: EdgeInsets.zero,
            unselectedLabelColor: TColor.gray,
            labelStyle:
                const TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
            unselectedLabelStyle:
                const TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
            indicatorColor: Colors.transparent,
            padding: EdgeInsets.zero,
            tabs: [
              Tab(
                icon: Image.asset(
                  "assets/img/home_tab.png",
                  width: 25,
                  height: 25,
                  fit: BoxFit.contain,
                  color: controller?.index == 0 ? TColor.primary : TColor.gray,
                ),
                text: "Home",
              ),
              Tab(
                icon: Image.asset(
                  "assets/img/discovery_tab.png",
                  width: 25,
                  height: 25,
                  fit: BoxFit.contain,
                  color: controller?.index == 1 ? TColor.primary : TColor.gray,
                ),
                text: "Discovery",
              ),
              Tab(
                icon: Image.asset(
                  "assets/img/bookmark_tab.png",
                  width: 25,
                  height: 25,
                  fit: BoxFit.contain,
                  color: controller?.index == 2 ? TColor.primary : TColor.gray,
                ),
                text: "Bookmark",
              ),
              Tab(
                icon: Image.asset(
                  "assets/img/top_foodie_tab.png",
                  width: 25,
                  height: 25,
                  fit: BoxFit.contain,
                  color: controller?.index == 3 ? TColor.primary : TColor.gray,
                ),
                text: "Top Foodie",
              ),
              Tab(
                icon: Image.asset(
                  "assets/img/my_profile_tab.png",
                  width: 25,
                  height: 25,
                  fit: BoxFit.contain,
                  color: controller?.index == 4 ? TColor.primary : TColor.gray,
                ),
                text: "My",
              ),
            ]),
      ),
    );
  }
}
